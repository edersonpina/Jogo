.class public Landroid/support/v4/app/f;
.super Landroid/support/v4/app/Fragment;
.source "DialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final SAVED_BACK_STACK_ID:Ljava/lang/String; = "android:backStackId"

.field private static final SAVED_CANCELABLE:Ljava/lang/String; = "android:cancelable"

.field private static final SAVED_DIALOG_STATE_TAG:Ljava/lang/String; = "android:savedDialogState"

.field private static final SAVED_SHOWS_DIALOG:Ljava/lang/String; = "android:showsDialog"

.field private static final SAVED_STYLE:Ljava/lang/String; = "android:style"

.field private static final SAVED_THEME:Ljava/lang/String; = "android:theme"

.field public static final STYLE_NORMAL:I = 0x0

.field public static final STYLE_NO_FRAME:I = 0x2

.field public static final STYLE_NO_INPUT:I = 0x3

.field public static final STYLE_NO_TITLE:I = 0x1


# instance fields
.field mBackStackId:I

.field mCancelable:Z

.field mDialog:Landroid/app/Dialog;

.field mDismissed:Z

.field mShownByMe:Z

.field mShowsDialog:Z

.field mStyle:I

.field mTheme:I

.field mViewDestroyed:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/f;->mStyle:I

    iput v0, p0, Landroid/support/v4/app/f;->mTheme:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/f;->mCancelable:Z

    iput-boolean v0, p0, Landroid/support/v4/app/f;->mShowsDialog:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/f;->mBackStackId:I

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/f;->dismissInternal(Z)V

    return-void
.end method

.method public dismissAllowingStateLoss()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/f;->dismissInternal(Z)V

    return-void
.end method

.method dismissInternal(Z)V
    .registers 6

    iget-boolean v0, p0, Landroid/support/v4/app/f;->mDismissed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/f;->mDismissed:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/app/f;->mShownByMe:Z

    iget-object v1, p0, Landroid/support/v4/app/f;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v4/app/f;->mDialog:Landroid/app/Dialog;

    :cond_15
    iput-boolean v0, p0, Landroid/support/v4/app/f;->mViewDestroyed:Z

    iget v1, p0, Landroid/support/v4/app/f;->mBackStackId:I

    if-ltz v1, :cond_28

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/j;

    move-result-object p1

    iget v1, p0, Landroid/support/v4/app/f;->mBackStackId:I

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/app/j;->a(II)V

    const/4 p1, -0x1

    iput p1, p0, Landroid/support/v4/app/f;->mBackStackId:I

    goto :goto_45

    :cond_28
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/j;->a()Landroid/support/v4/app/p;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/support/v4/app/b;

    new-instance v2, Landroid/support/v4/app/b$a;

    const/4 v3, 0x3

    invoke-direct {v2, v3, p0}, Landroid/support/v4/app/b$a;-><init>(ILandroid/support/v4/app/Fragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/app/b;->a(Landroid/support/v4/app/b$a;)V

    if-eqz p1, :cond_42

    invoke-virtual {v0}, Landroid/support/v4/app/p;->b()I

    goto :goto_45

    :cond_42
    invoke-virtual {v0}, Landroid/support/v4/app/p;->a()I

    :goto_45
    return-void
.end method

.method public getDialog()Landroid/app/Dialog;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/f;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getShowsDialog()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/app/f;->mShowsDialog:Z

    return v0
.end method

.method public getTheme()I
    .registers 2

    iget v0, p0, Landroid/support/v4/app/f;->mTheme:I

    return v0
.end method

.method public isCancelable()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/app/f;->mCancelable:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Landroid/support/v4/app/f;->mShowsDialog:Z

    if-nez v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1a

    iget-object v1, p0, Landroid/support/v4/app/f;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    goto :goto_22

    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "DialogFragment can not be attached to a container view"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_22
    :goto_22
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v1, p0, Landroid/support/v4/app/f;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    :cond_2d
    iget-object v0, p0, Landroid/support/v4/app/f;->mDialog:Landroid/app/Dialog;

    iget-boolean v1, p0, Landroid/support/v4/app/f;->mCancelable:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Landroid/support/v4/app/f;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Landroid/support/v4/app/f;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    if-eqz p1, :cond_4d

    const-string v0, "android:savedDialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4d

    iget-object v0, p0, Landroid/support/v4/app/f;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_4d
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    iget-boolean p1, p0, Landroid/support/v4/app/f;->mShownByMe:Z

    if-nez p1, :cond_a

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v4/app/f;->mDismissed:Z

    :cond_a
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2

    const p0, 0x0

    throw p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->mContainerId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iput-boolean v0, p0, Landroid/support/v4/app/f;->mShowsDialog:Z

    if-eqz p1, :cond_3b

    const-string v0, "android:style"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/f;->mStyle:I

    const-string v0, "android:theme"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/f;->mTheme:I

    const-string v0, "android:cancelable"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v4/app/f;->mCancelable:Z

    iget-boolean v0, p0, Landroid/support/v4/app/f;->mShowsDialog:Z

    const-string v1, "android:showsDialog"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v4/app/f;->mShowsDialog:Z

    const/4 v0, -0x1

    const-string v1, "android:backStackId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Landroid/support/v4/app/f;->mBackStackId:I

    :cond_3b
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 2

    const p0, 0x0

    throw p0
.end method

.method public onDestroyView()V
    .registers 3

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    iget-object v0, p0, Landroid/support/v4/app/f;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/app/f;->mViewDestroyed:Z

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/f;->mDialog:Landroid/app/Dialog;

    :cond_10
    return-void
.end method

.method public onDetach()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    iget-boolean v0, p0, Landroid/support/v4/app/f;->mShownByMe:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Landroid/support/v4/app/f;->mDismissed:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/f;->mDismissed:Z

    :cond_e
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    iget-boolean p1, p0, Landroid/support/v4/app/f;->mViewDestroyed:Z

    if-nez p1, :cond_8

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/f;->dismissInternal(Z)V

    :cond_8
    return-void
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 4

    iget-boolean v0, p0, Landroid/support/v4/app/f;->mShowsDialog:Z

    if-nez v0, :cond_9

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    return-object p1

    :cond_9
    invoke-virtual {p0, p1}, Landroid/support/v4/app/f;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/f;->mDialog:Landroid/app/Dialog;

    iget-object p1, p0, Landroid/support/v4/app/f;->mDialog:Landroid/app/Dialog;

    const-string v0, "layout_inflater"

    if-eqz p1, :cond_27

    iget v1, p0, Landroid/support/v4/app/f;->mStyle:I

    invoke-virtual {p0, p1, v1}, Landroid/support/v4/app/f;->setupDialog(Landroid/app/Dialog;I)V

    iget-object p1, p0, Landroid/support/v4/app/f;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    return-object p1

    :cond_27
    iget-object p1, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/i;

    iget-object p1, p1, Landroid/support/v4/app/i;->b:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/support/v4/app/f;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string v1, "android:savedDialogState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_12
    iget v0, p0, Landroid/support/v4/app/f;->mStyle:I

    if-eqz v0, :cond_1b

    const-string v1, "android:style"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1b
    iget v0, p0, Landroid/support/v4/app/f;->mTheme:I

    if-eqz v0, :cond_24

    const-string v1, "android:theme"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_24
    iget-boolean v0, p0, Landroid/support/v4/app/f;->mCancelable:Z

    if-nez v0, :cond_2d

    const-string v1, "android:cancelable"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2d
    iget-boolean v0, p0, Landroid/support/v4/app/f;->mShowsDialog:Z

    if-nez v0, :cond_36

    const-string v1, "android:showsDialog"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_36
    iget v0, p0, Landroid/support/v4/app/f;->mBackStackId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_40

    const-string v1, "android:backStackId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_40
    return-void
.end method

.method public onStart()V
    .registers 3

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    iget-object v0, p0, Landroid/support/v4/app/f;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_d

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/app/f;->mViewDestroyed:Z

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_d
    return-void
.end method

.method public onStop()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    iget-object v0, p0, Landroid/support/v4/app/f;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    :cond_a
    return-void
.end method

.method public setCancelable(Z)V
    .registers 3

    iput-boolean p1, p0, Landroid/support/v4/app/f;->mCancelable:Z

    iget-object v0, p0, Landroid/support/v4/app/f;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    :cond_9
    return-void
.end method

.method public setShowsDialog(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/support/v4/app/f;->mShowsDialog:Z

    return-void
.end method

.method public setStyle(II)V
    .registers 4

    iput p1, p0, Landroid/support/v4/app/f;->mStyle:I

    iget p1, p0, Landroid/support/v4/app/f;->mStyle:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_a

    const/4 v0, 0x3

    if-ne p1, v0, :cond_f

    :cond_a
    const p1, 0x1030059

    iput p1, p0, Landroid/support/v4/app/f;->mTheme:I

    :cond_f
    if-eqz p2, :cond_13

    iput p2, p0, Landroid/support/v4/app/f;->mTheme:I

    :cond_13
    return-void
.end method

.method public setupDialog(Landroid/app/Dialog;I)V
    .registers 5

    const/4 v0, 0x1

    if-eq p2, v0, :cond_13

    const/4 v1, 0x2

    if-eq p2, v1, :cond_13

    const/4 v1, 0x3

    if-eq p2, v1, :cond_a

    goto :goto_16

    :cond_a
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/16 v1, 0x18

    invoke-virtual {p2, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_13
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    :goto_16
    return-void
.end method

.method public show(Landroid/support/v4/app/p;Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/f;->mDismissed:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/app/f;->mShownByMe:Z

    invoke-virtual {p1, p0, p2}, Landroid/support/v4/app/p;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/p;

    iput-boolean v0, p0, Landroid/support/v4/app/f;->mViewDestroyed:Z

    invoke-virtual {p1}, Landroid/support/v4/app/p;->a()I

    move-result p1

    iput p1, p0, Landroid/support/v4/app/f;->mBackStackId:I

    iget p1, p0, Landroid/support/v4/app/f;->mBackStackId:I

    return p1
.end method

.method public show(Landroid/support/v4/app/j;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/f;->mDismissed:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/f;->mShownByMe:Z

    invoke-virtual {p1}, Landroid/support/v4/app/j;->a()Landroid/support/v4/app/p;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Landroid/support/v4/app/p;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/p;

    invoke-virtual {p1}, Landroid/support/v4/app/p;->a()I

    return-void
.end method
