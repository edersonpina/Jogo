.class final Landroid/support/v4/app/b;
.super Landroid/support/v4/app/p;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/support/v4/app/j$a;
.implements Landroid/support/v4/app/k$g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/b$a;
    }
.end annotation


# instance fields
.field final a:Landroid/support/v4/app/k;

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/b$a;",
            ">;"
        }
    .end annotation
.end field

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:Z

.field j:Ljava/lang/String;

.field k:Z

.field l:I

.field m:I

.field n:Ljava/lang/CharSequence;

.field o:I

.field p:Ljava/lang/CharSequence;

.field q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field s:Z

.field t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/k;)V
    .registers 3

    invoke-direct {p0}, Landroid/support/v4/app/p;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/b;->b:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/b;->l:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/b;->s:Z

    iput-object p1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/k;

    return-void
.end method

.method private static b(Landroid/support/v4/app/b$a;)Z
    .registers 2

    iget-object p0, p0, Landroid/support/v4/app/b$a;->b:Landroid/support/v4/app/Fragment;

    if-eqz p0, :cond_1c

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isPostponed()Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0
.end method


# virtual methods
.method public a()I
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/b;->a(Z)I

    move-result v0

    return v0
.end method

.method a(Z)I
    .registers 3

    iget-boolean v0, p0, Landroid/support/v4/app/b;->k:Z

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/b;->k:Z

    iget-boolean v0, p0, Landroid/support/v4/app/b;->i:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/k;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/b;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/b;->l:I

    goto :goto_17

    :cond_14
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/b;->l:I

    :goto_17
    iget-object v0, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/k;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/k$g;Z)V

    iget p1, p0, Landroid/support/v4/app/b;->l:I

    return p1

    :cond_1f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "commit already called"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/p;
    .registers 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v2

    if-nez v2, :cond_66

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_66

    :cond_20
    iget-object v0, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/k;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/k;

    if-eqz p2, :cond_5c

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    if-eqz v0, :cond_5a

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    goto :goto_5a

    :cond_31
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t change tag of fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " now "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5a
    :goto_5a
    iput-object p2, p1, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    :cond_5c
    new-instance p2, Landroid/support/v4/app/b$a;

    const/4 v0, 0x1

    invoke-direct {p2, v0, p1}, Landroid/support/v4/app/b$a;-><init>(ILandroid/support/v4/app/Fragment;)V

    invoke-virtual {p0, p2}, Landroid/support/v4/app/b;->a(Landroid/support/v4/app/b$a;)V

    return-object p0

    :cond_66
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Fragment "

    invoke-static {p2}, Ld/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " must be a public static class to be  properly recreated from"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " instance state."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(I)V
    .registers 6

    iget-boolean v0, p0, Landroid/support/v4/app/b;->i:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_22

    iget-object v2, p0, Landroid/support/v4/app/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/b$a;

    iget-object v2, v2, Landroid/support/v4/app/b$a;->b:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_1f

    iget v3, v2, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    add-int/2addr v3, p1

    iput v3, v2, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_22
    return-void
.end method

.method a(Landroid/support/v4/app/Fragment$e;)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/support/v4/app/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    iget-object v1, p0, Landroid/support/v4/app/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/b$a;

    invoke-static {v1}, Landroid/support/v4/app/b;->b(Landroid/support/v4/app/b$a;)Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-object v1, v1, Landroid/support/v4/app/b$a;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/Fragment;->setOnStartEnterTransitionListener(Landroid/support/v4/app/Fragment$e;)V

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1f
    return-void
.end method

.method a(Landroid/support/v4/app/b$a;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Landroid/support/v4/app/b;->c:I

    iput v0, p1, Landroid/support/v4/app/b$a;->c:I

    iget v0, p0, Landroid/support/v4/app/b;->d:I

    iput v0, p1, Landroid/support/v4/app/b$a;->d:I

    iget v0, p0, Landroid/support/v4/app/b;->e:I

    iput v0, p1, Landroid/support/v4/app/b$a;->e:I

    iget v0, p0, Landroid/support/v4/app/b;->f:I

    iput v0, p1, Landroid/support/v4/app/b$a;->f:I

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .registers 9

    if-eqz p3, :cond_da

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/b;->j:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/b;->l:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mCommitted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/b;->k:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget v0, p0, Landroid/support/v4/app/b;->g:I

    if-eqz v0, :cond_46

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTransition=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/b;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mTransitionStyle=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/b;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_46
    iget v0, p0, Landroid/support/v4/app/b;->c:I

    if-nez v0, :cond_4e

    iget v0, p0, Landroid/support/v4/app/b;->d:I

    if-eqz v0, :cond_6d

    :cond_4e
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/b;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/b;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6d
    iget v0, p0, Landroid/support/v4/app/b;->e:I

    if-nez v0, :cond_75

    iget v0, p0, Landroid/support/v4/app/b;->f:I

    if-eqz v0, :cond_94

    :cond_75
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPopEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/b;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mPopExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/b;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_94
    iget v0, p0, Landroid/support/v4/app/b;->m:I

    if-nez v0, :cond_9c

    iget-object v0, p0, Landroid/support/v4/app/b;->n:Ljava/lang/CharSequence;

    if-eqz v0, :cond_b7

    :cond_9c
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/b;->m:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/b;->n:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_b7
    iget v0, p0, Landroid/support/v4/app/b;->o:I

    if-nez v0, :cond_bf

    iget-object v0, p0, Landroid/support/v4/app/b;->p:Ljava/lang/CharSequence;

    if-eqz v0, :cond_da

    :cond_bf
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/b;->o:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbShortTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/b;->p:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_da
    iget-object v0, p0, Landroid/support/v4/app/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1ae

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Operations:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Landroid/support/v4/app/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_101
    if-ge v1, v0, :cond_1ae

    iget-object v2, p0, Landroid/support/v4/app/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/b$a;

    iget v3, v2, Landroid/support/v4/app/b$a;->a:I

    packed-switch v3, :pswitch_data_1b0

    const-string v3, "cmd="

    invoke-static {v3}, Ld/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/support/v4/app/b$a;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_13d

    :pswitch_120  #0x9
    const-string v3, "UNSET_PRIMARY_NAV"

    goto :goto_13d

    :pswitch_123  #0x8
    const-string v3, "SET_PRIMARY_NAV"

    goto :goto_13d

    :pswitch_126  #0x7
    const-string v3, "ATTACH"

    goto :goto_13d

    :pswitch_129  #0x6
    const-string v3, "DETACH"

    goto :goto_13d

    :pswitch_12c  #0x5
    const-string v3, "SHOW"

    goto :goto_13d

    :pswitch_12f  #0x4
    const-string v3, "HIDE"

    goto :goto_13d

    :pswitch_132  #0x3
    const-string v3, "REMOVE"

    goto :goto_13d

    :pswitch_135  #0x2
    const-string v3, "REPLACE"

    goto :goto_13d

    :pswitch_138  #0x1
    const-string v3, "ADD"

    goto :goto_13d

    :pswitch_13b  #0x0
    const-string v3, "NULL"

    :goto_13d
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  Op #"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Landroid/support/v4/app/b$a;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz p3, :cond_1aa

    iget v3, v2, Landroid/support/v4/app/b$a;->c:I

    if-nez v3, :cond_164

    iget v3, v2, Landroid/support/v4/app/b$a;->d:I

    if-eqz v3, :cond_183

    :cond_164
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "enterAnim=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Landroid/support/v4/app/b$a;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " exitAnim=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Landroid/support/v4/app/b$a;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_183
    iget v3, v2, Landroid/support/v4/app/b$a;->e:I

    if-nez v3, :cond_18b

    iget v3, v2, Landroid/support/v4/app/b$a;->f:I

    if-eqz v3, :cond_1aa

    :cond_18b
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "popEnterAnim=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Landroid/support/v4/app/b$a;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " popExitAnim=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v2, Landroid/support/v4/app/b$a;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1aa
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_101

    :cond_1ae
    return-void

    nop

    :pswitch_data_1b0
    .packed-switch 0x0
        :pswitch_13b  #00000000
        :pswitch_138  #00000001
        :pswitch_135  #00000002
        :pswitch_132  #00000003
        :pswitch_12f  #00000004
        :pswitch_12c  #00000005
        :pswitch_129  #00000006
        :pswitch_126  #00000007
        :pswitch_123  #00000008
        :pswitch_120  #00000009
    .end packed-switch
.end method

.method a(Ljava/util/ArrayList;II)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/b;",
            ">;II)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-ne p3, p2, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Landroid/support/v4/app/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    :goto_d
    if-ge v2, v1, :cond_53

    iget-object v4, p0, Landroid/support/v4/app/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/b$a;

    iget-object v4, v4, Landroid/support/v4/app/b$a;->b:Landroid/support/v4/app/Fragment;

    if-eqz v4, :cond_1e

    iget v4, v4, Landroid/support/v4/app/Fragment;->mContainerId:I

    goto :goto_1f

    :cond_1e
    const/4 v4, 0x0

    :goto_1f
    if-eqz v4, :cond_50

    if-eq v4, v3, :cond_50

    move v3, p2

    :goto_24
    if-ge v3, p3, :cond_4f

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/b;

    iget-object v6, v5, Landroid/support/v4/app/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_33
    if-ge v7, v6, :cond_4c

    iget-object v8, v5, Landroid/support/v4/app/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/app/b$a;

    iget-object v8, v8, Landroid/support/v4/app/b$a;->b:Landroid/support/v4/app/Fragment;

    if-eqz v8, :cond_44

    iget v8, v8, Landroid/support/v4/app/Fragment;->mContainerId:I

    goto :goto_45

    :cond_44
    const/4 v8, 0x0

    :goto_45
    if-ne v8, v4, :cond_49

    const/4 p1, 0x1

    return p1

    :cond_49
    add-int/lit8 v7, v7, 0x1

    goto :goto_33

    :cond_4c
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_4f
    move v3, v4

    :cond_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_53
    return v0
.end method

.method public a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/b;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Landroid/support/v4/app/b;->i:Z

    if-eqz p1, :cond_21

    iget-object p1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/k;

    iget-object p2, p1, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    if-nez p2, :cond_1c

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    :cond_1c
    iget-object p1, p1, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    const/4 p1, 0x1

    return p1
.end method

.method public b()I
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/b;->a(Z)I

    move-result v0

    return v0
.end method

.method b(Z)V
    .registers 8

    iget-object v0, p0, Landroid/support/v4/app/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_9e

    iget-object v2, p0, Landroid/support/v4/app/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/b$a;

    iget-object v3, v2, Landroid/support/v4/app/b$a;->b:Landroid/support/v4/app/Fragment;

    if-eqz v3, :cond_21

    iget v4, p0, Landroid/support/v4/app/b;->g:I

    invoke-static {v4}, Landroid/support/v4/app/k;->d(I)I

    move-result v4

    iget v5, p0, Landroid/support/v4/app/b;->h:I

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/app/Fragment;->setNextTransition(II)V

    :cond_21
    iget v4, v2, Landroid/support/v4/app/b$a;->a:I

    packed-switch v4, :pswitch_data_ac

    :pswitch_26  #0x2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown cmd: "

    invoke-static {v0}, Ld/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v2, Landroid/support/v4/app/b$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_3b  #0x9
    iget-object v4, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/k;

    invoke-virtual {v4, v3}, Landroid/support/v4/app/k;->i(Landroid/support/v4/app/Fragment;)V

    goto :goto_8a

    :pswitch_41  #0x8
    iget-object v4, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/k;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v4/app/k;->i(Landroid/support/v4/app/Fragment;)V

    goto :goto_8a

    :pswitch_48  #0x7
    iget v4, v2, Landroid/support/v4/app/b$a;->f:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/Fragment;->setNextAnim(I)V

    iget-object v4, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/k;

    invoke-virtual {v4, v3}, Landroid/support/v4/app/k;->b(Landroid/support/v4/app/Fragment;)V

    goto :goto_8a

    :pswitch_53  #0x6
    iget v4, v2, Landroid/support/v4/app/b$a;->e:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/Fragment;->setNextAnim(I)V

    iget-object v4, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/k;

    invoke-virtual {v4, v3}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/Fragment;)V

    goto :goto_8a

    :pswitch_5e  #0x5
    iget v4, v2, Landroid/support/v4/app/b$a;->f:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/Fragment;->setNextAnim(I)V

    iget-object v4, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/k;

    invoke-virtual {v4, v3}, Landroid/support/v4/app/k;->c(Landroid/support/v4/app/Fragment;)V

    goto :goto_8a

    :pswitch_69  #0x4
    iget v4, v2, Landroid/support/v4/app/b$a;->e:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/Fragment;->setNextAnim(I)V

    iget-object v4, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/k;

    invoke-virtual {v4, v3}, Landroid/support/v4/app/k;->j(Landroid/support/v4/app/Fragment;)V

    goto :goto_8a

    :pswitch_74  #0x3
    iget v4, v2, Landroid/support/v4/app/b$a;->e:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/Fragment;->setNextAnim(I)V

    iget-object v4, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/k;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/Fragment;Z)V

    goto :goto_8a

    :pswitch_80  #0x1
    iget v4, v2, Landroid/support/v4/app/b$a;->f:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/Fragment;->setNextAnim(I)V

    iget-object v4, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/k;

    invoke-virtual {v4, v3}, Landroid/support/v4/app/k;->g(Landroid/support/v4/app/Fragment;)V

    :goto_8a
    iget-boolean v4, p0, Landroid/support/v4/app/b;->s:Z

    if-nez v4, :cond_9a

    iget v2, v2, Landroid/support/v4/app/b$a;->a:I

    const/4 v4, 0x3

    if-eq v2, v4, :cond_9a

    if-eqz v3, :cond_9a

    iget-object v2, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/k;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/k;->e(Landroid/support/v4/app/Fragment;)V

    :cond_9a
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_8

    :cond_9e
    iget-boolean v0, p0, Landroid/support/v4/app/b;->s:Z

    if-nez v0, :cond_ab

    if-eqz p1, :cond_ab

    iget-object p1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/k;

    iget v0, p1, Landroid/support/v4/app/k;->m:I

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/k;->a(IZ)V

    :cond_ab
    return-void

    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_80  #00000001
        :pswitch_26  #00000002
        :pswitch_74  #00000003
        :pswitch_69  #00000004
        :pswitch_5e  #00000005
        :pswitch_53  #00000006
        :pswitch_48  #00000007
        :pswitch_41  #00000008
        :pswitch_3b  #00000009
    .end packed-switch
.end method

.method b(I)Z
    .registers 6

    iget-object v0, p0, Landroid/support/v4/app/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_23

    iget-object v3, p0, Landroid/support/v4/app/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/b$a;

    iget-object v3, v3, Landroid/support/v4/app/b$a;->b:Landroid/support/v4/app/Fragment;

    if-eqz v3, :cond_19

    iget v3, v3, Landroid/support/v4/app/Fragment;->mContainerId:I

    goto :goto_1a

    :cond_19
    const/4 v3, 0x0

    :goto_1a
    if-eqz v3, :cond_20

    if-ne v3, p1, :cond_20

    const/4 p1, 0x1

    return p1

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_23
    return v1
.end method

.method c()V
    .registers 9

    iget-object v0, p0, Landroid/support/v4/app/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    const/4 v3, 0x1

    if-ge v2, v0, :cond_99

    iget-object v4, p0, Landroid/support/v4/app/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/b$a;

    iget-object v5, v4, Landroid/support/v4/app/b$a;->b:Landroid/support/v4/app/Fragment;

    if-eqz v5, :cond_1e

    iget v6, p0, Landroid/support/v4/app/b;->g:I

    iget v7, p0, Landroid/support/v4/app/b;->h:I

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/app/Fragment;->setNextTransition(II)V

    :cond_1e
    iget v6, v4, Landroid/support/v4/app/b$a;->a:I

    packed-switch v6, :pswitch_data_a6

    :pswitch_23  #0x2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown cmd: "

    invoke-static {v1}, Ld/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v4, Landroid/support/v4/app/b$a;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_38  #0x9
    iget-object v6, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/k;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v4/app/k;->i(Landroid/support/v4/app/Fragment;)V

    goto :goto_86

    :pswitch_3f  #0x8
    iget-object v6, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/k;

    invoke-virtual {v6, v5}, Landroid/support/v4/app/k;->i(Landroid/support/v4/app/Fragment;)V

    goto :goto_86

    :pswitch_45  #0x7
    iget v6, v4, Landroid/support/v4/app/b$a;->c:I

    invoke-virtual {v5, v6}, Landroid/support/v4/app/Fragment;->setNextAnim(I)V

    iget-object v6, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/k;

    invoke-virtual {v6, v5}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/Fragment;)V

    goto :goto_86

    :pswitch_50  #0x6
    iget v6, v4, Landroid/support/v4/app/b$a;->d:I

    invoke-virtual {v5, v6}, Landroid/support/v4/app/Fragment;->setNextAnim(I)V

    iget-object v6, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/k;

    invoke-virtual {v6, v5}, Landroid/support/v4/app/k;->b(Landroid/support/v4/app/Fragment;)V

    goto :goto_86

    :pswitch_5b  #0x5
    iget v6, v4, Landroid/support/v4/app/b$a;->c:I

    invoke-virtual {v5, v6}, Landroid/support/v4/app/Fragment;->setNextAnim(I)V

    iget-object v6, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/k;

    invoke-virtual {v6, v5}, Landroid/support/v4/app/k;->j(Landroid/support/v4/app/Fragment;)V

    goto :goto_86

    :pswitch_66  #0x4
    iget v6, v4, Landroid/support/v4/app/b$a;->d:I

    invoke-virtual {v5, v6}, Landroid/support/v4/app/Fragment;->setNextAnim(I)V

    iget-object v6, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/k;

    invoke-virtual {v6, v5}, Landroid/support/v4/app/k;->c(Landroid/support/v4/app/Fragment;)V

    goto :goto_86

    :pswitch_71  #0x3
    iget v6, v4, Landroid/support/v4/app/b$a;->d:I

    invoke-virtual {v5, v6}, Landroid/support/v4/app/Fragment;->setNextAnim(I)V

    iget-object v6, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/k;

    invoke-virtual {v6, v5}, Landroid/support/v4/app/k;->g(Landroid/support/v4/app/Fragment;)V

    goto :goto_86

    :pswitch_7c  #0x1
    iget v6, v4, Landroid/support/v4/app/b$a;->c:I

    invoke-virtual {v5, v6}, Landroid/support/v4/app/Fragment;->setNextAnim(I)V

    iget-object v6, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/k;

    invoke-virtual {v6, v5, v1}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/Fragment;Z)V

    :goto_86
    iget-boolean v6, p0, Landroid/support/v4/app/b;->s:Z

    if-nez v6, :cond_95

    iget v4, v4, Landroid/support/v4/app/b$a;->a:I

    if-eq v4, v3, :cond_95

    if-eqz v5, :cond_95

    iget-object v3, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/k;

    invoke-virtual {v3, v5}, Landroid/support/v4/app/k;->e(Landroid/support/v4/app/Fragment;)V

    :cond_95
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    :cond_99
    iget-boolean v0, p0, Landroid/support/v4/app/b;->s:Z

    if-nez v0, :cond_a4

    iget-object v0, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/k;

    iget v1, v0, Landroid/support/v4/app/k;->m:I

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/app/k;->a(IZ)V

    :cond_a4
    return-void

    nop

    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_7c  #00000001
        :pswitch_23  #00000002
        :pswitch_71  #00000003
        :pswitch_66  #00000004
        :pswitch_5b  #00000005
        :pswitch_50  #00000006
        :pswitch_45  #00000007
        :pswitch_3f  #00000008
        :pswitch_38  #00000009
    .end packed-switch
.end method

.method d()Z
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Landroid/support/v4/app/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    iget-object v2, p0, Landroid/support/v4/app/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/b$a;

    invoke-static {v2}, Landroid/support/v4/app/b;->b(Landroid/support/v4/app/b$a;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v0, 0x1

    return v0

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1d
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "BackStackEntry{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/app/b;->l:I

    if-ltz v1, :cond_25

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/app/b;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_25
    iget-object v1, p0, Landroid/support/v4/app/b;->j:Ljava/lang/String;

    if-eqz v1, :cond_33

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/app/b;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_33
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
