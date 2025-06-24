.class final Lb/b/c/c/b$c;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"

# interfaces
.implements Lb/b/c/c/c$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/b/c/c/b;->a(Landroid/content/Context;Lb/b/c/c/a;Landroid/support/v4/content/e/b;Landroid/os/Handler;ZII)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/b/c/c/c$d<",
        "Lb/b/c/c/b$g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lb/b/c/c/b$c;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/b/c/c/b$g;)V
    .registers 6

    invoke-static {}, Lb/b/c/c/b;->b()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lb/b/c/c/b;->c()Lb/b/c/d/j;

    move-result-object v1

    iget-object v2, p0, Lb/b/c/c/b$c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lb/b/c/d/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_15

    monitor-exit v0

    return-void

    :cond_15
    invoke-static {}, Lb/b/c/c/b;->c()Lb/b/c/d/j;

    move-result-object v2

    iget-object v3, p0, Lb/b/c/c/b$c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lb/b/c/d/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_33

    const/4 v0, 0x0

    :goto_20
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_32

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/c/c/c$d;

    invoke-interface {v2, p1}, Lb/b/c/c/c$d;->a(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_32
    return-void

    :catchall_33
    move-exception p1

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    goto :goto_37

    :goto_36
    throw p1

    :goto_37
    goto :goto_36
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lb/b/c/c/b$g;

    invoke-virtual {p0, p1}, Lb/b/c/c/b$c;->a(Lb/b/c/c/b$g;)V

    return-void
.end method
