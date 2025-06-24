.class Landroid/support/v7/view/menu/i;
.super Ljava/lang/Object;
.source "MenuDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/support/v7/view/menu/p$a;


# instance fields
.field private b:Landroid/support/v7/view/menu/h;

.field private c:Landroid/support/v7/app/k;

.field d:Landroid/support/v7/view/menu/f;

.field private e:Landroid/support/v7/view/menu/p$a;


# direct methods
.method public constructor <init>(Landroid/support/v7/view/menu/h;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v7/view/menu/i;->b:Landroid/support/v7/view/menu/h;

    return-void
.end method


# virtual methods
.method public a(Landroid/os/IBinder;)V
    .registers 7

    iget-object v0, p0, Landroid/support/v7/view/menu/i;->b:Landroid/support/v7/view/menu/h;

    new-instance v1, Landroid/support/v7/app/k$a;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->e()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/app/k$a;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/support/v7/view/menu/f;

    invoke-virtual {v1}, Landroid/support/v7/app/k$a;->b()Landroid/content/Context;

    move-result-object v3

    sget v4, Lb/b/d/a/g;->abc_list_menu_item_layout:I

    invoke-direct {v2, v3, v4}, Landroid/support/v7/view/menu/f;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Landroid/support/v7/view/menu/i;->d:Landroid/support/v7/view/menu/f;

    iget-object v2, p0, Landroid/support/v7/view/menu/i;->d:Landroid/support/v7/view/menu/f;

    invoke-virtual {v2, p0}, Landroid/support/v7/view/menu/f;->a(Landroid/support/v7/view/menu/p$a;)V

    iget-object v2, p0, Landroid/support/v7/view/menu/i;->b:Landroid/support/v7/view/menu/h;

    iget-object v3, p0, Landroid/support/v7/view/menu/i;->d:Landroid/support/v7/view/menu/f;

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/h;->a(Landroid/support/v7/view/menu/p;)V

    iget-object v2, p0, Landroid/support/v7/view/menu/i;->d:Landroid/support/v7/view/menu/f;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/f;->a()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/support/v7/app/k$a;->a(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/k$a;

    iget-object v2, v0, Landroid/support/v7/view/menu/h;->p:Landroid/view/View;

    if-eqz v2, :cond_35

    invoke-virtual {v1, v2}, Landroid/support/v7/app/k$a;->a(Landroid/view/View;)Landroid/support/v7/app/k$a;

    goto :goto_3f

    :cond_35
    iget-object v2, v0, Landroid/support/v7/view/menu/h;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/support/v7/app/k$a;->a(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/app/k$a;

    iget-object v0, v0, Landroid/support/v7/view/menu/h;->n:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/k$a;->a(Ljava/lang/CharSequence;)Landroid/support/v7/app/k$a;

    :goto_3f
    invoke-virtual {v1, p0}, Landroid/support/v7/app/k$a;->a(Landroid/content/DialogInterface$OnKeyListener;)Landroid/support/v7/app/k$a;

    invoke-virtual {v1}, Landroid/support/v7/app/k$a;->a()Landroid/support/v7/app/k;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/i;->c:Landroid/support/v7/app/k;

    iget-object v0, p0, Landroid/support/v7/view/menu/i;->c:Landroid/support/v7/app/k;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Landroid/support/v7/view/menu/i;->c:Landroid/support/v7/app/k;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x3eb

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eqz p1, :cond_5f

    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :cond_5f
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x20000

    or-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object p1, p0, Landroid/support/v7/view/menu/i;->c:Landroid/support/v7/app/k;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public a(Landroid/support/v7/view/menu/h;Z)V
    .registers 4

    if-nez p2, :cond_6

    iget-object v0, p0, Landroid/support/v7/view/menu/i;->b:Landroid/support/v7/view/menu/h;

    if-ne p1, v0, :cond_d

    :cond_6
    iget-object v0, p0, Landroid/support/v7/view/menu/i;->c:Landroid/support/v7/app/k;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_d
    iget-object v0, p0, Landroid/support/v7/view/menu/i;->e:Landroid/support/v7/view/menu/p$a;

    if-eqz v0, :cond_14

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/menu/p$a;->a(Landroid/support/v7/view/menu/h;Z)V

    :cond_14
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/h;)Z
    .registers 3

    iget-object v0, p0, Landroid/support/v7/view/menu/i;->e:Landroid/support/v7/view/menu/p$a;

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Landroid/support/v7/view/menu/p$a;->a(Landroid/support/v7/view/menu/h;)Z

    move-result p1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object p1, p0, Landroid/support/v7/view/menu/i;->b:Landroid/support/v7/view/menu/h;

    iget-object v0, p0, Landroid/support/v7/view/menu/i;->d:Landroid/support/v7/view/menu/f;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/f;->a()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v7/view/menu/k;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/support/v7/view/menu/h;->a(Landroid/view/MenuItem;I)Z

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4

    iget-object p1, p0, Landroid/support/v7/view/menu/i;->d:Landroid/support/v7/view/menu/f;

    iget-object v0, p0, Landroid/support/v7/view/menu/i;->b:Landroid/support/v7/view/menu/h;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/view/menu/f;->a(Landroid/support/v7/view/menu/h;Z)V

    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6

    const/16 v0, 0x52

    if-eq p2, v0, :cond_7

    const/4 v0, 0x4

    if-ne p2, v0, :cond_5b

    :cond_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2c

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2c

    iget-object p1, p0, Landroid/support/v7/view/menu/i;->c:Landroid/support/v7/app/k;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_5b

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5b

    invoke-virtual {p1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object p1

    if-eqz p1, :cond_5b

    invoke-virtual {p1, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    return v1

    :cond_2c
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_5b

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_5b

    iget-object v0, p0, Landroid/support/v7/view/menu/i;->c:Landroid/support/v7/app/k;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_5b

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5b

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-eqz v0, :cond_5b

    invoke-virtual {v0, p3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object p2, p0, Landroid/support/v7/view/menu/i;->b:Landroid/support/v7/view/menu/h;

    invoke-virtual {p2, v1}, Landroid/support/v7/view/menu/h;->a(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return v1

    :cond_5b
    iget-object p1, p0, Landroid/support/v7/view/menu/i;->b:Landroid/support/v7/view/menu/h;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/support/v7/view/menu/h;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1
.end method
