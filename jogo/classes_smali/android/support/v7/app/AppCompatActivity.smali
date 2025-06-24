.class public Landroid/support/v7/app/AppCompatActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "AppCompatActivity.java"

# interfaces
.implements Landroid/support/v7/app/l;
.implements Landroid/support/v4/app/p0$a;
.implements Landroid/support/v7/app/b;


# instance fields
.field private b:Landroid/support/v7/app/m;

.field private c:I

.field private d:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/app/AppCompatActivity;->c:I

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Intent;
    .registers 2

    invoke-static {p0}, La/a/g;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public a(Lb/b/d/d/b$a;)Lb/b/d/d/b;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/content/Intent;)V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    return-void
.end method

.method public a(Landroid/support/v4/app/p0;)V
    .registers 2

    invoke-virtual {p1, p0}, Landroid/support/v4/app/p0;->a(Landroid/app/Activity;)Landroid/support/v4/app/p0;

    return-void
.end method

.method public a(Lb/b/d/d/b;)V
    .registers 2

    return-void
.end method

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->b()Landroid/support/v7/app/m;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/m;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public b()Landroid/support/v7/app/m;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/AppCompatActivity;->b:Landroid/support/v7/app/m;

    if-nez v0, :cond_a

    invoke-static {p0, p0}, Landroid/support/v7/app/m;->a(Landroid/app/Activity;Landroid/support/v7/app/l;)Landroid/support/v7/app/m;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/AppCompatActivity;->b:Landroid/support/v7/app/m;

    :cond_a
    iget-object v0, p0, Landroid/support/v7/app/AppCompatActivity;->b:Landroid/support/v7/app/m;

    return-object v0
.end method

.method public b(Lb/b/d/d/b;)V
    .registers 2

    return-void
.end method

.method public b(Landroid/content/Intent;)Z
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public c()Landroid/support/v7/app/a;
    .registers 2

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->b()Landroid/support/v7/app/m;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/n;

    invoke-virtual {v0}, Landroid/support/v7/app/n;->j()V

    iget-object v0, v0, Landroid/support/v7/app/n;->g:Landroid/support/v7/app/a;

    return-object v0
.end method

.method public closeOptionsMenu()V
    .registers 4

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->c()Landroid/support/v7/app/a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-super {p0}, Landroid/app/Activity;->closeOptionsMenu()V

    :cond_12
    return-void
.end method

.method public d()V
    .registers 1

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->c()Landroid/support/v7/app/a;

    move-result-object v1

    const/16 v2, 0x52

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public e()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public f()Z
    .registers 3

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->a()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatActivity;->b(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-static {p0}, Landroid/support/v4/app/p0;->a(Landroid/content/Context;)Landroid/support/v4/app/p0;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatActivity;->a(Landroid/support/v4/app/p0;)V

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->d()V

    invoke-virtual {v0}, Landroid/support/v4/app/p0;->a()V

    :try_start_19
    invoke-static {p0}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;)V
    :try_end_1c
    .catch Ljava/lang/IllegalStateException; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_24

    :catch_1d
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_24

    :cond_21
    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatActivity;->a(Landroid/content/Intent;)V

    :goto_24
    const/4 v0, 0x1

    return v0

    :cond_26
    const/4 v0, 0x0

    return v0
.end method

.method public findViewById(I)Landroid/view/View;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->b()Landroid/support/v7/app/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/m;->a(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .registers 4

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->b()Landroid/support/v7/app/m;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/n;

    iget-object v1, v0, Landroid/support/v7/app/n;->h:Landroid/view/MenuInflater;

    if-nez v1, :cond_1f

    invoke-virtual {v0}, Landroid/support/v7/app/n;->j()V

    new-instance v1, Lb/b/d/d/g;

    iget-object v2, v0, Landroid/support/v7/app/n;->g:Landroid/support/v7/app/a;

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Landroid/support/v7/app/a;->c()Landroid/content/Context;

    move-result-object v2

    goto :goto_1a

    :cond_18
    iget-object v2, v0, Landroid/support/v7/app/n;->b:Landroid/content/Context;

    :goto_1a
    invoke-direct {v1, v2}, Lb/b/d/d/g;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Landroid/support/v7/app/n;->h:Landroid/view/MenuInflater;

    :cond_1f
    iget-object v0, v0, Landroid/support/v7/app/n;->h:Landroid/view/MenuInflater;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/AppCompatActivity;->d:Landroid/content/res/Resources;

    if-nez v0, :cond_7

    invoke-static {}, Landroid/support/v7/widget/e1;->a()Z

    :cond_7
    iget-object v0, p0, Landroid/support/v7/app/AppCompatActivity;->d:Landroid/content/res/Resources;

    if-nez v0, :cond_f

    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :cond_f
    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .registers 2

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->b()Landroid/support/v7/app/m;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/m;->c()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->b()Landroid/support/v7/app/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/m;->a(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroid/support/v7/app/AppCompatActivity;->d:Landroid/content/res/Resources;

    if-eqz v0, :cond_1b

    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/AppCompatActivity;->d:Landroid/content/res/Resources;

    invoke-virtual {v1, p1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_1b
    return-void
.end method

.method public onContentChanged()V
    .registers 1

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->e()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->b()Landroid/support/v7/app/m;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/m;->b()V

    invoke-virtual {v0, p1}, Landroid/support/v7/app/m;->a(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/support/v7/app/m;->a()Z

    move-result v0

    if-eqz v0, :cond_28

    iget v0, p0, Landroid/support/v7/app/AppCompatActivity;->c:I

    if-eqz v0, :cond_28

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_25

    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/app/AppCompatActivity;->c:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/Activity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    goto :goto_28

    :cond_25
    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatActivity;->setTheme(I)V

    :cond_28
    :goto_28
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->b()Landroid/support/v7/app/m;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/m;->d()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x1

    if-ge v0, v1, :cond_3f

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-nez v0, :cond_3f

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    if-nez v0, :cond_3f

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_3f

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v0

    if-nez v0, :cond_3f

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3f

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_3f

    const/4 v0, 0x1

    goto :goto_40

    :cond_3f
    const/4 v0, 0x0

    :goto_40
    if-eqz v0, :cond_43

    return v2

    :cond_43
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->c()Landroid/support/v7/app/a;

    move-result-object p1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const v0, 0x102002c

    if-ne p2, v0, :cond_24

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Landroid/support/v7/app/a;->b()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_24

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->f()Z

    move-result p1

    return p1

    :cond_24
    const/4 p1, 0x0

    return p1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->b()Landroid/support/v7/app/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/m;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onPostResume()V
    .registers 3

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPostResume()V

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->b()Landroid/support/v7/app/m;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AppCompatDelegateImplV9;

    invoke-virtual {v0}, Landroid/support/v7/app/n;->j()V

    iget-object v0, v0, Landroid/support/v7/app/n;->g:Landroid/support/v7/app/a;

    if-eqz v0, :cond_14

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->c(Z)V

    :cond_14
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->b()Landroid/support/v7/app/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/m;->c(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->b()Landroid/support/v7/app/m;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/m;->e()V

    return-void
.end method

.method protected onStop()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->b()Landroid/support/v7/app/m;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/m;->f()V

    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->b()Landroid/support/v7/app/m;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v7/app/m;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public openOptionsMenu()V
    .registers 4

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->c()Landroid/support/v7/app/a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-super {p0}, Landroid/app/Activity;->openOptionsMenu()V

    :cond_12
    return-void
.end method

.method public setContentView(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->b()Landroid/support/v7/app/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/m;->c(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->b()Landroid/support/v7/app/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/m;->a(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->b()Landroid/support/v7/app/m;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/m;->b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTheme(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    iput p1, p0, Landroid/support/v7/app/AppCompatActivity;->c:I

    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .registers 2

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->b()Landroid/support/v7/app/m;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/m;->c()V

    return-void
.end method
