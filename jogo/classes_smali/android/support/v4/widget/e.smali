.class Landroid/support/v4/widget/e;
.super Landroid/widget/Filter;
.source "CursorFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/e$a;
    }
.end annotation


# instance fields
.field a:Landroid/support/v4/widget/e$a;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/e$a;)V
    .registers 2

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    iput-object p1, p0, Landroid/support/v4/widget/e;->a:Landroid/support/v4/widget/e$a;

    return-void
.end method


# virtual methods
.method public convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3

    iget-object v0, p0, Landroid/support/v4/widget/e;->a:Landroid/support/v4/widget/e$a;

    check-cast p1, Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/support/v4/widget/e$a;->b(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 4

    iget-object v0, p0, Landroid/support/v4/widget/e;->a:Landroid/support/v4/widget/e$a;

    invoke-interface {v0, p1}, Landroid/support/v4/widget/e$a;->a(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object p1

    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    if-eqz p1, :cond_16

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_1c

    :cond_16
    const/4 p1, 0x0

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    const/4 p1, 0x0

    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    :goto_1c
    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 4

    iget-object p1, p0, Landroid/support/v4/widget/e;->a:Landroid/support/v4/widget/e$a;

    move-object v0, p1

    check-cast v0, Landroid/support/v4/widget/d;

    iget-object v0, v0, Landroid/support/v4/widget/d;->d:Landroid/database/Cursor;

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz p2, :cond_12

    if-eq p2, v0, :cond_12

    check-cast p2, Landroid/database/Cursor;

    invoke-interface {p1, p2}, Landroid/support/v4/widget/e$a;->a(Landroid/database/Cursor;)V

    :cond_12
    return-void
.end method
