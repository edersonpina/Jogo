.class final Landroid/support/v4/app/t;
.super Ljava/lang/Object;
.source "FragmentTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Landroid/support/v4/app/z;

.field final synthetic c:Lb/b/c/d/a;

.field final synthetic d:Ljava/lang/Object;

.field final synthetic e:Landroid/support/v4/app/u$a;

.field final synthetic f:Ljava/util/ArrayList;

.field final synthetic g:Landroid/view/View;

.field final synthetic h:Landroid/support/v4/app/Fragment;

.field final synthetic i:Landroid/support/v4/app/Fragment;

.field final synthetic j:Z

.field final synthetic k:Ljava/util/ArrayList;

.field final synthetic l:Ljava/lang/Object;

.field final synthetic m:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/support/v4/app/z;Lb/b/c/d/a;Ljava/lang/Object;Landroid/support/v4/app/u$a;Ljava/util/ArrayList;Landroid/view/View;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V
    .registers 13

    iput-object p1, p0, Landroid/support/v4/app/t;->b:Landroid/support/v4/app/z;

    iput-object p2, p0, Landroid/support/v4/app/t;->c:Lb/b/c/d/a;

    iput-object p3, p0, Landroid/support/v4/app/t;->d:Ljava/lang/Object;

    iput-object p4, p0, Landroid/support/v4/app/t;->e:Landroid/support/v4/app/u$a;

    iput-object p5, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;

    iput-object p6, p0, Landroid/support/v4/app/t;->g:Landroid/view/View;

    iput-object p7, p0, Landroid/support/v4/app/t;->h:Landroid/support/v4/app/Fragment;

    iput-object p8, p0, Landroid/support/v4/app/t;->i:Landroid/support/v4/app/Fragment;

    iput-boolean p9, p0, Landroid/support/v4/app/t;->j:Z

    iput-object p10, p0, Landroid/support/v4/app/t;->k:Ljava/util/ArrayList;

    iput-object p11, p0, Landroid/support/v4/app/t;->l:Ljava/lang/Object;

    iput-object p12, p0, Landroid/support/v4/app/t;->m:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Landroid/support/v4/app/t;->b:Landroid/support/v4/app/z;

    iget-object v1, p0, Landroid/support/v4/app/t;->c:Lb/b/c/d/a;

    iget-object v2, p0, Landroid/support/v4/app/t;->d:Ljava/lang/Object;

    iget-object v3, p0, Landroid/support/v4/app/t;->e:Landroid/support/v4/app/u$a;

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/z;Lb/b/c/d/a;Ljava/lang/Object;Landroid/support/v4/app/u$a;)Lb/b/c/d/a;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v1, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lb/b/c/d/a;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/t;->g:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e
    iget-object v1, p0, Landroid/support/v4/app/t;->h:Landroid/support/v4/app/Fragment;

    iget-object v2, p0, Landroid/support/v4/app/t;->i:Landroid/support/v4/app/Fragment;

    iget-boolean v3, p0, Landroid/support/v4/app/t;->j:Z

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLb/b/c/d/a;Z)V

    iget-object v1, p0, Landroid/support/v4/app/t;->d:Ljava/lang/Object;

    if-eqz v1, :cond_48

    iget-object v2, p0, Landroid/support/v4/app/t;->b:Landroid/support/v4/app/z;

    iget-object v3, p0, Landroid/support/v4/app/t;->k:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v3, v4}, Landroid/support/v4/app/z;->b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v1, p0, Landroid/support/v4/app/t;->e:Landroid/support/v4/app/u$a;

    iget-object v2, p0, Landroid/support/v4/app/t;->l:Ljava/lang/Object;

    iget-boolean v3, p0, Landroid/support/v4/app/t;->j:Z

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/app/u;->a(Lb/b/c/d/a;Landroid/support/v4/app/u$a;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_48

    iget-object v1, p0, Landroid/support/v4/app/t;->b:Landroid/support/v4/app/z;

    iget-object v2, p0, Landroid/support/v4/app/t;->m:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/z;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_48
    return-void
.end method
