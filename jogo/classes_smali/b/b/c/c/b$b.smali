.class final Lb/b/c/c/b$b;
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
.field final synthetic a:Landroid/support/v4/content/e/b;

.field final synthetic b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/support/v4/content/e/b;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lb/b/c/c/b$b;->a:Landroid/support/v4/content/e/b;

    iput-object p2, p0, Lb/b/c/c/b$b;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Lb/b/c/c/b$g;

    iget v0, p1, Lb/b/c/c/b$g;->b:I

    if-nez v0, :cond_10

    iget-object v0, p0, Lb/b/c/c/b$b;->a:Landroid/support/v4/content/e/b;

    iget-object p1, p1, Lb/b/c/c/b$g;->a:Landroid/graphics/Typeface;

    iget-object v1, p0, Lb/b/c/c/b$b;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/content/e/b;->a(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_17

    :cond_10
    iget-object p1, p0, Lb/b/c/c/b$b;->a:Landroid/support/v4/content/e/b;

    iget-object v1, p0, Lb/b/c/c/b$b;->b:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/content/e/b;->a(ILandroid/os/Handler;)V

    :goto_17
    return-void
.end method
