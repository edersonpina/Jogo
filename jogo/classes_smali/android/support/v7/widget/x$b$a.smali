.class Landroid/support/v7/widget/x$b$a;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/x$b;-><init>(Landroid/support/v7/widget/x;Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/support/v7/widget/x$b;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/x$b;Landroid/support/v7/widget/x;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v7/widget/x$b$a;->b:Landroid/support/v7/widget/x$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Landroid/support/v7/widget/x$b$a;->b:Landroid/support/v7/widget/x$b;

    iget-object p1, p1, Landroid/support/v7/widget/x$b;->M:Landroid/support/v7/widget/x;

    invoke-virtual {p1, p3}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object p1, p0, Landroid/support/v7/widget/x$b$a;->b:Landroid/support/v7/widget/x$b;

    iget-object p1, p1, Landroid/support/v7/widget/x$b;->M:Landroid/support/v7/widget/x;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_1e

    iget-object p1, p0, Landroid/support/v7/widget/x$b$a;->b:Landroid/support/v7/widget/x$b;

    iget-object p4, p1, Landroid/support/v7/widget/x$b;->M:Landroid/support/v7/widget/x;

    iget-object p1, p1, Landroid/support/v7/widget/x$b;->K:Landroid/widget/ListAdapter;

    invoke-interface {p1, p3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    invoke-virtual {p4, p2, p3, v0, v1}, Landroid/widget/Spinner;->performItemClick(Landroid/view/View;IJ)Z

    :cond_1e
    iget-object p1, p0, Landroid/support/v7/widget/x$b$a;->b:Landroid/support/v7/widget/x$b;

    invoke-virtual {p1}, Landroid/support/v7/widget/l0;->dismiss()V

    return-void
.end method
