package android.support.v4.app;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* compiled from: FragmentController.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
public class h {
    private final i a;

    private h(i iVar) {
        this.a = iVar;
    }

    public static final h a(i iVar) {
        return new h(iVar);
    }

    public Fragment a(String str) {
        return this.a.d.b(str);
    }

    public View a(View view, String str, Context context, AttributeSet attributeSet) {
        return this.a.d.onCreateView(view, str, context, attributeSet);
    }

    public void a() {
        this.a.d.d();
    }

    public void a(Configuration configuration) {
        this.a.d.a(configuration);
    }

    public void a(Parcelable parcelable, o oVar) {
        this.a.d.a(parcelable, oVar);
    }

    public void a(Fragment fragment) {
        i iVar = this.a;
        k kVar = iVar.d;
        if (kVar.n != null) {
            throw new IllegalStateException("Already attached");
        }
        kVar.n = iVar;
        kVar.o = iVar;
        kVar.p = fragment;
    }

    public void a(Menu menu) {
        this.a.d.a(menu);
    }

    public void a(b.b.c.d.j jVar) {
        this.a.a(jVar);
    }

    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        this.a.a(str, fileDescriptor, printWriter, strArr);
    }

    public void a(boolean z) {
        this.a.d.a(z);
    }

    public boolean a(Menu menu, MenuInflater menuInflater) {
        return this.a.d.a(menu, menuInflater);
    }

    public boolean a(MenuItem menuItem) {
        return this.a.d.a(menuItem);
    }

    public void b() {
        this.a.d.e();
    }

    public void b(boolean z) {
        this.a.d.b(z);
    }

    public boolean b(Menu menu) {
        return this.a.d.b(menu);
    }

    public boolean b(MenuItem menuItem) {
        return this.a.d.b(menuItem);
    }

    public void c() {
        this.a.d.f();
    }

    public void c(boolean z) {
        this.a.a(z);
    }

    public void d() {
        this.a.d.h();
    }

    public void e() {
        this.a.d.i();
    }

    public void f() {
        this.a.d.j();
    }

    public void g() {
        this.a.d.k();
    }

    public void h() {
        this.a.d.l();
    }

    public void i() {
        this.a.d.m();
    }

    public void j() {
        this.a.b();
    }

    public void k() {
        this.a.c();
    }

    public boolean l() {
        return this.a.d.o();
    }

    public j m() {
        return this.a.d;
    }

    public b0 n() {
        return this.a.f();
    }

    public void o() {
        this.a.d.q();
    }

    public void p() {
        this.a.h();
    }

    public b.b.c.d.j q() {
        return this.a.i();
    }

    public o r() {
        return this.a.d.r();
    }

    public Parcelable s() {
        return this.a.d.s();
    }
}
