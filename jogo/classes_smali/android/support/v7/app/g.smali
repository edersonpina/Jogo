.class Landroid/support/v7/app/g;
.super Landroid/widget/ArrayAdapter;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Landroid/support/v7/app/AlertController$RecycleListView;

.field final synthetic c:Landroid/support/v7/app/AlertController$b;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AlertController$b;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroid/support/v7/app/AlertController$RecycleListView;)V
    .registers 7

    iput-object p1, p0, Landroid/support/v7/app/g;->c:Landroid/support/v7/app/AlertController$b;

    iput-object p6, p0, Landroid/support/v7/app/g;->b:Landroid/support/v7/app/AlertController$RecycleListView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Landroid/support/v7/app/g;->c:Landroid/support/v7/app/AlertController$b;

    iget-object p3, p3, Landroid/support/v7/app/AlertController$b;->C:[Z

    if-eqz p3, :cond_14

    aget-boolean p3, p3, p1

    if-eqz p3, :cond_14

    iget-object p3, p0, Landroid/support/v7/app/g;->b:Landroid/support/v7/app/AlertController$RecycleListView;

    const/4 v0, 0x1

    invoke-virtual {p3, p1, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_14
    return-object p2
.end method
