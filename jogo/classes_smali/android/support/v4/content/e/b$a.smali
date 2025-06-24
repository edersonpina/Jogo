.class Landroid/support/v4/content/e/b$a;
.super Ljava/lang/Object;
.source "ResourcesCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/content/e/b;->a(Landroid/graphics/Typeface;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/graphics/Typeface;

.field final synthetic c:Landroid/support/v4/content/e/b;


# direct methods
.method constructor <init>(Landroid/support/v4/content/e/b;Landroid/graphics/Typeface;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v4/content/e/b$a;->c:Landroid/support/v4/content/e/b;

    iput-object p2, p0, Landroid/support/v4/content/e/b$a;->b:Landroid/graphics/Typeface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/content/e/b$a;->c:Landroid/support/v4/content/e/b;

    iget-object v1, p0, Landroid/support/v4/content/e/b$a;->b:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/e/b;->a(Landroid/graphics/Typeface;)V

    return-void
.end method
