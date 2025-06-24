.class Landroid/support/v4/view/n$f$a;
.super Ljava/lang/Object;
.source "ViewCompat.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/view/n$f;->a(Landroid/view/View;Landroid/support/v4/view/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/view/k;


# direct methods
.method constructor <init>(Landroid/support/v4/view/n$f;Landroid/support/v4/view/k;)V
    .registers 3

    iput-object p2, p0, Landroid/support/v4/view/n$f$a;->a:Landroid/support/v4/view/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 4

    invoke-static {p2}, Landroid/support/v4/view/u;->a(Ljava/lang/Object;)Landroid/support/v4/view/u;

    move-result-object p2

    iget-object v0, p0, Landroid/support/v4/view/n$f$a;->a:Landroid/support/v4/view/k;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/k;->a(Landroid/view/View;Landroid/support/v4/view/u;)Landroid/support/v4/view/u;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/view/u;->a(Landroid/support/v4/view/u;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowInsets;

    return-object p1
.end method
