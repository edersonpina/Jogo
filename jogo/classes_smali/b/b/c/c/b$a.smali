.class final Lb/b/c/c/b$a;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


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
        "Ljava/util/concurrent/Callable<",
        "Lb/b/c/c/b$g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lb/b/c/c/a;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lb/b/c/c/a;ILjava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lb/b/c/c/b$a;->a:Landroid/content/Context;

    iput-object p2, p0, Lb/b/c/c/b$a;->b:Lb/b/c/c/a;

    iput p3, p0, Lb/b/c/c/b$a;->c:I

    iput-object p4, p0, Lb/b/c/c/b$a;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lb/b/c/c/b$a;->a:Landroid/content/Context;

    iget-object v1, p0, Lb/b/c/c/b$a;->b:Lb/b/c/c/a;

    iget v2, p0, Lb/b/c/c/b$a;->c:I

    invoke-static {v0, v1, v2}, Lb/b/c/c/b;->a(Landroid/content/Context;Lb/b/c/c/a;I)Lb/b/c/c/b$g;

    move-result-object v0

    iget-object v1, v0, Lb/b/c/c/b$g;->a:Landroid/graphics/Typeface;

    if-eqz v1, :cond_19

    invoke-static {}, Lb/b/c/c/b;->a()Lb/b/c/d/g;

    move-result-object v1

    iget-object v2, p0, Lb/b/c/c/b$a;->d:Ljava/lang/String;

    iget-object v3, v0, Lb/b/c/c/b$g;->a:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2, v3}, Lb/b/c/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    return-object v0
.end method
