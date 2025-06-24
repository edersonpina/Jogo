.class public abstract Lb/b/d/d/b;
.super Ljava/lang/Object;
.source "ActionMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/d/d/b$a;
    }
.end annotation


# instance fields
.field private b:Ljava/lang/Object;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(I)V
.end method

.method public abstract a(Landroid/view/View;)V
.end method

.method public abstract a(Ljava/lang/CharSequence;)V
.end method

.method public a(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lb/b/d/d/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lb/b/d/d/b;->c:Z

    return-void
.end method

.method public abstract b()Landroid/view/View;
.end method

.method public abstract b(I)V
.end method

.method public abstract b(Ljava/lang/CharSequence;)V
.end method

.method public abstract c()Landroid/view/Menu;
.end method

.method public abstract d()Landroid/view/MenuInflater;
.end method

.method public abstract e()Ljava/lang/CharSequence;
.end method

.method public f()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lb/b/d/d/b;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract g()Ljava/lang/CharSequence;
.end method

.method public h()Z
    .registers 2

    iget-boolean v0, p0, Lb/b/d/d/b;->c:Z

    return v0
.end method

.method public abstract i()V
.end method

.method public abstract j()Z
.end method
