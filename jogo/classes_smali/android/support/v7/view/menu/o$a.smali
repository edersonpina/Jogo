.class Landroid/support/v7/view/menu/o$a;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/menu/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/support/v7/view/menu/o;


# direct methods
.method constructor <init>(Landroid/support/v7/view/menu/o;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/view/menu/o$a;->b:Landroid/support/v7/view/menu/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 2

    iget-object v0, p0, Landroid/support/v7/view/menu/o$a;->b:Landroid/support/v7/view/menu/o;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/o;->d()V

    return-void
.end method
