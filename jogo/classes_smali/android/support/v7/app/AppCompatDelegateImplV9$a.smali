.class Landroid/support/v7/app/AppCompatDelegateImplV9$a;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV9.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AppCompatDelegateImplV9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/support/v7/app/AppCompatDelegateImplV9;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$a;->b:Landroid/support/v7/app/AppCompatDelegateImplV9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$a;->b:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9;->L:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->d(I)V

    :cond_c
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$a;->b:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9;->L:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_19

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->d(I)V

    :cond_19
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$a;->b:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iput-boolean v2, v0, Landroid/support/v7/app/AppCompatDelegateImplV9;->K:Z

    iput v2, v0, Landroid/support/v7/app/AppCompatDelegateImplV9;->L:I

    return-void
.end method
