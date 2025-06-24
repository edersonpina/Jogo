.class Landroid/support/v7/app/c;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/support/v4/widget/NestedScrollView$b;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V
    .registers 4

    iput-object p2, p0, Landroid/support/v7/app/c;->a:Landroid/view/View;

    iput-object p3, p0, Landroid/support/v7/app/c;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/widget/NestedScrollView;IIII)V
    .registers 6

    iget-object p2, p0, Landroid/support/v7/app/c;->a:Landroid/view/View;

    iget-object p3, p0, Landroid/support/v7/app/c;->b:Landroid/view/View;

    invoke-static {p1, p2, p3}, Landroid/support/v7/app/AlertController;->a(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
