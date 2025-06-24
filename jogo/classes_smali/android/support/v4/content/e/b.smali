.class public abstract Landroid/support/v4/content/e/b;
.super Ljava/lang/Object;
.source "ResourcesCompat.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(I)V
.end method

.method public final a(ILandroid/os/Handler;)V
    .registers 4

    if-nez p2, :cond_b

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :cond_b
    new-instance v0, Landroid/support/v4/content/e/b$b;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/content/e/b$b;-><init>(Landroid/support/v4/content/e/b;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public abstract a(Landroid/graphics/Typeface;)V
.end method

.method public final a(Landroid/graphics/Typeface;Landroid/os/Handler;)V
    .registers 4

    if-nez p2, :cond_b

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :cond_b
    new-instance v0, Landroid/support/v4/content/e/b$a;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/content/e/b$a;-><init>(Landroid/support/v4/content/e/b;Landroid/graphics/Typeface;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
