.class Landroid/support/v7/app/s;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV9.java"

# interfaces
.implements Landroid/support/v4/view/k;


# instance fields
.field final synthetic a:Landroid/support/v7/app/AppCompatDelegateImplV9;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/app/s;->a:Landroid/support/v7/app/AppCompatDelegateImplV9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/support/v4/view/u;)Landroid/support/v4/view/u;
    .registers 7

    invoke-virtual {p2}, Landroid/support/v4/view/u;->d()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/app/s;->a:Landroid/support/v7/app/AppCompatDelegateImplV9;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->f(I)I

    move-result v1

    if-eq v0, v1, :cond_1c

    invoke-virtual {p2}, Landroid/support/v4/view/u;->b()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/v4/view/u;->c()I

    move-result v2

    invoke-virtual {p2}, Landroid/support/v4/view/u;->a()I

    move-result v3

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/support/v4/view/u;->a(IIII)Landroid/support/v4/view/u;

    move-result-object p2

    :cond_1c
    invoke-static {p1, p2}, Landroid/support/v4/view/n;->a(Landroid/view/View;Landroid/support/v4/view/u;)Landroid/support/v4/view/u;

    move-result-object p1

    return-object p1
.end method
