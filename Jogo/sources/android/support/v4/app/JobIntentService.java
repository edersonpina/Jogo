package android.support.v4.app;

import android.app.Service;
import android.app.job.JobParameters;
import android.app.job.JobServiceEngine;
import android.app.job.JobWorkItem;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Build;
import android.os.IBinder;
import android.os.PowerManager;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
public abstract class JobIntentService extends Service {
    static final HashMap h = new HashMap();
    b b;
    g c;
    a d;
    boolean e = false;
    boolean f = false;
    final ArrayList g;

    final class a extends AsyncTask {
        a() {
        }

        protected Object doInBackground(Object[] objArr) {
            while (true) {
                e a = JobIntentService.this.a();
                if (a == null) {
                    return null;
                }
                JobIntentService.this.a(a.getIntent());
                a.a();
            }
        }

        protected void onCancelled(Object obj) {
            JobIntentService.this.d();
        }

        protected void onPostExecute(Object obj) {
            JobIntentService.this.d();
        }
    }

    interface b {
    }

    static final class c extends g {
        private final PowerManager.WakeLock b;
        private final PowerManager.WakeLock c;
        boolean d;
        boolean e;

        c(Context context, ComponentName componentName) {
            super(componentName);
            context.getApplicationContext();
            PowerManager powerManager = (PowerManager) context.getSystemService("power");
            this.b = powerManager.newWakeLock(1, componentName.getClassName() + ":launch");
            this.b.setReferenceCounted(false);
            this.c = powerManager.newWakeLock(1, componentName.getClassName() + ":run");
            this.c.setReferenceCounted(false);
        }

        public void a() {
            synchronized (this) {
                if (this.e) {
                    if (this.d) {
                        this.b.acquire(60000L);
                    }
                    this.e = false;
                    this.c.release();
                }
            }
        }

        public void b() {
            synchronized (this) {
                if (!this.e) {
                    this.e = true;
                    this.c.acquire(600000L);
                    this.b.release();
                }
            }
        }

        public void c() {
            synchronized (this) {
                this.d = false;
            }
        }
    }

    final class d implements e {
        final Intent a;
        final int b;

        d(Intent intent, int i) {
            this.a = intent;
            this.b = i;
        }

        public void a() {
            JobIntentService.this.stopSelf(this.b);
        }

        public Intent getIntent() {
            return this.a;
        }
    }

    interface e {
        void a();

        Intent getIntent();
    }

    static final class f extends JobServiceEngine implements b {
        final JobIntentService a;
        final Object b;
        JobParameters c;

        final class a implements e {
            final JobWorkItem a;

            a(JobWorkItem jobWorkItem) {
                this.a = jobWorkItem;
            }

            public void a() {
                synchronized (f.this.b) {
                    if (f.this.c != null) {
                        f.this.c.completeWork(this.a);
                    }
                }
            }

            public Intent getIntent() {
                return this.a.getIntent();
            }
        }

        f(JobIntentService jobIntentService) {
            super(jobIntentService);
            this.b = new Object();
            this.a = jobIntentService;
        }

        public e a() {
            synchronized (this.b) {
                if (this.c == null) {
                    return null;
                }
                JobWorkItem dequeueWork = this.c.dequeueWork();
                if (dequeueWork == null) {
                    return null;
                }
                dequeueWork.getIntent().setExtrasClassLoader(this.a.getClassLoader());
                return new a(dequeueWork);
            }
        }

        public boolean onStartJob(JobParameters jobParameters) {
            this.c = jobParameters;
            this.a.a(false);
            return true;
        }

        public boolean onStopJob(JobParameters jobParameters) {
            boolean b = this.a.b();
            synchronized (this.b) {
                this.c = null;
            }
            return b;
        }
    }

    static abstract class g {
        final ComponentName a;

        g(ComponentName componentName) {
            this.a = componentName;
        }

        public void a() {
        }

        public void b() {
        }

        public void c() {
        }
    }

    public JobIntentService() {
        if (Build.VERSION.SDK_INT >= 26) {
            this.g = null;
        } else {
            this.g = new ArrayList();
        }
    }

    e a() {
        b bVar = this.b;
        if (bVar != null) {
            return ((f) bVar).a();
        }
        synchronized (this.g) {
            if (this.g.size() <= 0) {
                return null;
            }
            return (e) this.g.remove(0);
        }
    }

    protected abstract void a(Intent intent);

    void a(boolean z) {
        if (this.d == null) {
            this.d = new a();
            g gVar = this.c;
            if (gVar != null && z) {
                gVar.b();
            }
            this.d.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }

    boolean b() {
        a aVar = this.d;
        if (aVar != null) {
            aVar.cancel(this.e);
        }
        return c();
    }

    public boolean c() {
        return true;
    }

    void d() {
        ArrayList arrayList = this.g;
        if (arrayList != null) {
            synchronized (arrayList) {
                this.d = null;
                if (this.g != null && this.g.size() > 0) {
                    a(false);
                } else if (!this.f) {
                    this.c.a();
                }
            }
        }
    }

    public IBinder onBind(Intent intent) {
        b bVar = this.b;
        if (bVar != null) {
            return ((f) bVar).getBinder();
        }
        return null;
    }

    public void onCreate() {
        super.onCreate();
        if (Build.VERSION.SDK_INT >= 26) {
            this.b = new f(this);
            this.c = null;
            return;
        }
        this.b = null;
        ComponentName componentName = new ComponentName(this, JobIntentService.class);
        g gVar = (g) h.get(componentName);
        if (gVar == null) {
            if (Build.VERSION.SDK_INT >= 26) {
                throw new IllegalArgumentException("Can't be here without a job id");
            }
            gVar = new c(this, componentName);
            h.put(componentName, gVar);
        }
        this.c = gVar;
    }

    public void onDestroy() {
        super.onDestroy();
        ArrayList arrayList = this.g;
        if (arrayList != null) {
            synchronized (arrayList) {
                this.f = true;
                this.c.a();
            }
        }
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        if (this.g == null) {
            return 2;
        }
        this.c.c();
        synchronized (this.g) {
            ArrayList arrayList = this.g;
            if (intent == null) {
                intent = new Intent();
            }
            arrayList.add(new d(intent, i2));
            a(true);
        }
        return 3;
    }
}
