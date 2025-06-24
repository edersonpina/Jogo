.class Landroid/support/v4/content/e/b$b;
.super Ljava/lang/Object;
.source "ResourcesCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/content/e/b;->a(ILandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Landroid/support/v4/content/e/b;


# direct methods
.method constructor <init>(Landroid/support/v4/content/e/b;I)V
    .registers 3

    iput-object p1, p0, Landroid/support/v4/content/e/b$b;->c:Landroid/support/v4/content/e/b;

    iput p2, p0, Landroid/support/v4/content/e/b$b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/content/e/b$b;->c:Landroid/support/v4/content/e/b;

    iget v1, p0, Landroid/support/v4/content/e/b$b;->b:I

    invoke-virtual {v0, v1}, Landroid/support/v4/content/e/b;->a(I)V

    return-void
.end method
