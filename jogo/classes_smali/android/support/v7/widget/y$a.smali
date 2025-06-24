.class Landroid/support/v7/widget/y$a;
.super Landroid/support/v4/content/e/b;
.source "AppCompatTextHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/y;->a(Landroid/content/Context;Landroid/support/v7/widget/y0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/ref/WeakReference;

.field final synthetic b:Landroid/support/v7/widget/y;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/y;Ljava/lang/ref/WeakReference;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v7/widget/y$a;->b:Landroid/support/v7/widget/y;

    iput-object p2, p0, Landroid/support/v7/widget/y$a;->a:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Landroid/support/v4/content/e/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 2

    return-void
.end method

.method public a(Landroid/graphics/Typeface;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/widget/y$a;->b:Landroid/support/v7/widget/y;

    iget-object v1, p0, Landroid/support/v7/widget/y$a;->a:Ljava/lang/ref/WeakReference;

    invoke-static {v0, v1, p1}, Landroid/support/v7/widget/y;->a(Landroid/support/v7/widget/y;Ljava/lang/ref/WeakReference;Landroid/graphics/Typeface;)V

    return-void
.end method
