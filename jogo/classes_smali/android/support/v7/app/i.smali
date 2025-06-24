.class Landroid/support/v7/app/i;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic b:Landroid/support/v7/app/AlertController;

.field final synthetic c:Landroid/support/v7/app/AlertController$b;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AlertController$b;Landroid/support/v7/app/AlertController;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v7/app/i;->c:Landroid/support/v7/app/AlertController$b;

    iput-object p2, p0, Landroid/support/v7/app/i;->b:Landroid/support/v7/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    iget-object p1, p0, Landroid/support/v7/app/i;->c:Landroid/support/v7/app/AlertController$b;

    iget-object p1, p1, Landroid/support/v7/app/AlertController$b;->u:Landroid/content/DialogInterface$OnClickListener;

    iget-object p2, p0, Landroid/support/v7/app/i;->b:Landroid/support/v7/app/AlertController;

    iget-object p2, p2, Landroid/support/v7/app/AlertController;->b:Landroid/support/v7/app/x;

    invoke-interface {p1, p2, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    iget-object p1, p0, Landroid/support/v7/app/i;->c:Landroid/support/v7/app/AlertController$b;

    iget-boolean p1, p1, Landroid/support/v7/app/AlertController$b;->E:Z

    if-nez p1, :cond_18

    iget-object p1, p0, Landroid/support/v7/app/i;->b:Landroid/support/v7/app/AlertController;

    iget-object p1, p1, Landroid/support/v7/app/AlertController;->b:Landroid/support/v7/app/x;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_18
    return-void
.end method
