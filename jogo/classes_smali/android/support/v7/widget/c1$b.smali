.class Landroid/support/v7/widget/c1$b;
.super Ljava/lang/Object;
.source "TooltipCompatHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/c1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/support/v7/widget/c1;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/c1;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/widget/c1$b;->b:Landroid/support/v7/widget/c1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/c1$b;->b:Landroid/support/v7/widget/c1;

    invoke-static {v0}, Landroid/support/v7/widget/c1;->a(Landroid/support/v7/widget/c1;)V

    return-void
.end method
