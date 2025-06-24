.class Landroid/support/v4/widget/a$b;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic b:Landroid/support/v4/widget/a;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/a;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/widget/a$b;->b:Landroid/support/v4/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/widget/a$b;->b:Landroid/support/v4/widget/a;

    iget-boolean v1, v0, Landroid/support/v4/widget/a;->p:Z

    if-nez v1, :cond_7

    return-void

    :cond_7
    iget-boolean v1, v0, Landroid/support/v4/widget/a;->n:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    iput-boolean v2, v0, Landroid/support/v4/widget/a;->n:Z

    iget-object v0, v0, Landroid/support/v4/widget/a;->b:Landroid/support/v4/widget/a$a;

    invoke-virtual {v0}, Landroid/support/v4/widget/a$a;->h()V

    :cond_13
    iget-object v0, p0, Landroid/support/v4/widget/a$b;->b:Landroid/support/v4/widget/a;

    iget-object v0, v0, Landroid/support/v4/widget/a;->b:Landroid/support/v4/widget/a$a;

    invoke-virtual {v0}, Landroid/support/v4/widget/a$a;->f()Z

    move-result v1

    if-nez v1, :cond_49

    iget-object v1, p0, Landroid/support/v4/widget/a$b;->b:Landroid/support/v4/widget/a;

    invoke-virtual {v1}, Landroid/support/v4/widget/a;->b()Z

    move-result v1

    if-nez v1, :cond_26

    goto :goto_49

    :cond_26
    iget-object v1, p0, Landroid/support/v4/widget/a$b;->b:Landroid/support/v4/widget/a;

    iget-boolean v3, v1, Landroid/support/v4/widget/a;->o:Z

    if-eqz v3, :cond_31

    iput-boolean v2, v1, Landroid/support/v4/widget/a;->o:Z

    invoke-virtual {v1}, Landroid/support/v4/widget/a;->a()V

    :cond_31
    invoke-virtual {v0}, Landroid/support/v4/widget/a$a;->a()V

    invoke-virtual {v0}, Landroid/support/v4/widget/a$a;->b()I

    move-result v1

    invoke-virtual {v0}, Landroid/support/v4/widget/a$a;->c()I

    move-result v0

    iget-object v2, p0, Landroid/support/v4/widget/a$b;->b:Landroid/support/v4/widget/a;

    invoke-virtual {v2, v1, v0}, Landroid/support/v4/widget/a;->a(II)V

    iget-object v0, p0, Landroid/support/v4/widget/a$b;->b:Landroid/support/v4/widget/a;

    iget-object v0, v0, Landroid/support/v4/widget/a;->d:Landroid/view/View;

    invoke-static {v0, p0}, Landroid/support/v4/view/n;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void

    :cond_49
    :goto_49
    iget-object v0, p0, Landroid/support/v4/widget/a$b;->b:Landroid/support/v4/widget/a;

    iput-boolean v2, v0, Landroid/support/v4/widget/a;->p:Z

    return-void
.end method
