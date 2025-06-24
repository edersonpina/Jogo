.class Lb/b/d/d/h$a;
.super Landroid/support/v4/view/s;
.source "ViewPropertyAnimatorCompatSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/d/d/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field final synthetic c:Lb/b/d/d/h;


# direct methods
.method constructor <init>(Lb/b/d/d/h;)V
    .registers 2

    iput-object p1, p0, Lb/b/d/d/h$a;->c:Lb/b/d/d/h;

    invoke-direct {p0}, Landroid/support/v4/view/s;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lb/b/d/d/h$a;->a:Z

    iput p1, p0, Lb/b/d/d/h$a;->b:I

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .registers 3

    iget p1, p0, Lb/b/d/d/h$a;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lb/b/d/d/h$a;->b:I

    iget-object v0, p0, Lb/b/d/d/h$a;->c:Lb/b/d/d/h;

    iget-object v0, v0, Lb/b/d/d/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_24

    iget-object p1, p0, Lb/b/d/d/h$a;->c:Lb/b/d/d/h;

    iget-object p1, p1, Lb/b/d/d/h;->d:Landroid/support/v4/view/r;

    if-eqz p1, :cond_1a

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/support/v4/view/r;->b(Landroid/view/View;)V

    :cond_1a
    const/4 p1, 0x0

    iput p1, p0, Lb/b/d/d/h$a;->b:I

    iput-boolean p1, p0, Lb/b/d/d/h$a;->a:Z

    iget-object p1, p0, Lb/b/d/d/h$a;->c:Lb/b/d/d/h;

    invoke-virtual {p1}, Lb/b/d/d/h;->b()V

    :cond_24
    return-void
.end method

.method public c(Landroid/view/View;)V
    .registers 3

    iget-boolean p1, p0, Lb/b/d/d/h$a;->a:Z

    if-eqz p1, :cond_5

    return-void

    :cond_5
    const/4 p1, 0x1

    iput-boolean p1, p0, Lb/b/d/d/h$a;->a:Z

    iget-object p1, p0, Lb/b/d/d/h$a;->c:Lb/b/d/d/h;

    iget-object p1, p1, Lb/b/d/d/h;->d:Landroid/support/v4/view/r;

    if-eqz p1, :cond_12

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/support/v4/view/r;->c(Landroid/view/View;)V

    :cond_12
    return-void
.end method
