.class Landroid/support/v4/app/k$h;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroid/support/v4/app/k$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:I

.field final c:I

.field final synthetic d:Landroid/support/v4/app/k;


# direct methods
.method constructor <init>(Landroid/support/v4/app/k;Ljava/lang/String;II)V
    .registers 5

    iput-object p1, p0, Landroid/support/v4/app/k$h;->d:Landroid/support/v4/app/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/support/v4/app/k$h;->a:Ljava/lang/String;

    iput p3, p0, Landroid/support/v4/app/k$h;->b:I

    iput p4, p0, Landroid/support/v4/app/k$h;->c:I

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 9
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

    iget-object v0, p0, Landroid/support/v4/app/k$h;->d:Landroid/support/v4/app/k;

    iget-object v0, v0, Landroid/support/v4/app/k;->q:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1c

    iget v1, p0, Landroid/support/v4/app/k$h;->b:I

    if-gez v1, :cond_1c

    iget-object v1, p0, Landroid/support/v4/app/k$h;->a:Ljava/lang/String;

    if-nez v1, :cond_1c

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->peekChildFragmentManager()Landroid/support/v4/app/j;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/support/v4/app/j;->c()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 p1, 0x0

    return p1

    :cond_1c
    iget-object v0, p0, Landroid/support/v4/app/k$h;->d:Landroid/support/v4/app/k;

    iget-object v3, p0, Landroid/support/v4/app/k$h;->a:Ljava/lang/String;

    iget v4, p0, Landroid/support/v4/app/k$h;->b:I

    iget v5, p0, Landroid/support/v4/app/k$h;->c:I

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/k;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result p1

    return p1
.end method
