.class Landroid/support/v7/widget/k0;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic b:Landroid/support/v7/widget/l0;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/l0;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/widget/k0;->b:Landroid/support/v7/widget/l0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 p1, -0x1

    if-eq p3, p1, :cond_d

    iget-object p1, p0, Landroid/support/v7/widget/k0;->b:Landroid/support/v7/widget/l0;

    iget-object p1, p1, Landroid/support/v7/widget/l0;->d:Landroid/support/v7/widget/f0;

    if-eqz p1, :cond_d

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/f0;->setListSelectionHidden(Z)V

    :cond_d
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
