package android.support.v4.content;

import android.os.Binder;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.util.Log;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: ModernAsyncTask.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
abstract class d {
    private static final ThreadFactory g = new a();
    private static final BlockingQueue h = new LinkedBlockingQueue(10);
    public static final Executor i = new ThreadPoolExecutor(5, 128, 1, TimeUnit.SECONDS, h, g);
    private static e j;
    private volatile f d = f.PENDING;
    private final AtomicBoolean e = new AtomicBoolean();
    private final AtomicBoolean f = new AtomicBoolean();
    private final g b = new b();
    private final FutureTask c = new c(this.b);

    /* compiled from: ModernAsyncTask.java */
    static class a implements ThreadFactory {
        private final AtomicInteger a = new AtomicInteger(1);

        a() {
        }

        public Thread newThread(Runnable runnable) {
            StringBuilder a = d.a.a.a.a.a("ModernAsyncTask #");
            a.append(this.a.getAndIncrement());
            return new Thread(runnable, a.toString());
        }
    }

    /* compiled from: ModernAsyncTask.java */
    class b extends g {
        b() {
        }

        public Object call() {
            d.a(d.this).set(true);
            Object obj = null;
            try {
                Process.setThreadPriority(10);
                obj = d.this.a(this.a);
                Binder.flushPendingCommands();
                return obj;
            } finally {
            }
        }
    }

    /* compiled from: ModernAsyncTask.java */
    class c extends FutureTask {
        c(Callable callable) {
            super(callable);
        }

        protected void done() {
            try {
                d.this.e(get());
            } catch (InterruptedException e) {
                Log.w("AsyncTask", e);
            } catch (ExecutionException e2) {
                throw new RuntimeException("An error occurred while executing doInBackground()", e2.getCause());
            } catch (CancellationException unused) {
                d.this.e(null);
            } catch (Throwable th) {
                throw new RuntimeException("An error occurred while executing doInBackground()", th);
            }
        }
    }

    /* compiled from: ModernAsyncTask.java */
    private static class d {
        final d a;
        final Object[] b;

        d(d dVar, Object... objArr) {
            this.a = dVar;
            this.b = objArr;
        }
    }

    /* compiled from: ModernAsyncTask.java */
    private static class e extends Handler {
        e() {
            super(Looper.getMainLooper());
        }

        public void handleMessage(Message message) {
            d dVar = (d) message.obj;
            int i = message.what;
            if (i == 1) {
                dVar.a.a(dVar.b[0]);
            } else {
                if (i != 2) {
                    return;
                }
                d dVar2 = dVar.a;
                Object[] objArr = dVar.b;
                dVar2.b();
            }
        }
    }

    /* compiled from: ModernAsyncTask.java */
    public enum f {
        PENDING,
        RUNNING,
        FINISHED
    }

    /* compiled from: ModernAsyncTask.java */
    private static abstract class g implements Callable {
        Object[] a;

        g() {
        }
    }

    d() {
    }

    static /* synthetic */ AtomicBoolean a(d dVar) {
        return dVar.f;
    }

    static /* synthetic */ AtomicBoolean b(d dVar) {
        return dVar.e;
    }

    private static Handler c() {
        e eVar;
        synchronized (d.class) {
            if (j == null) {
                j = new e();
            }
            eVar = j;
        }
        return eVar;
    }

    public final d a(Executor executor, Object... objArr) {
        if (this.d == f.PENDING) {
            this.d = f.RUNNING;
            this.b.a = objArr;
            executor.execute(this.c);
            return this;
        }
        int ordinal = this.d.ordinal();
        if (ordinal == 1) {
            throw new IllegalStateException("Cannot execute task: the task is already running.");
        }
        if (ordinal != 2) {
            throw new IllegalStateException("We should never reach this state");
        }
        throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
    }

    protected abstract Object a(Object... objArr);

    void a(Object obj) {
        if (a()) {
            b(obj);
        } else {
            c(obj);
        }
        this.d = f.FINISHED;
    }

    public final boolean a() {
        return this.e.get();
    }

    public final boolean a(boolean z) {
        this.e.set(true);
        return this.c.cancel(z);
    }

    protected void b() {
    }

    protected void b(Object obj) {
    }

    protected void c(Object obj) {
    }

    Object d(Object obj) {
        c().obtainMessage(1, new d(this, obj)).sendToTarget();
        return obj;
    }

    void e(Object obj) {
        if (this.f.get()) {
            return;
        }
        d(obj);
    }
}
