.class public abstract Landroid/support/v4/widget/d;
.super Landroid/widget/BaseAdapter;
.source "CursorAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/support/v4/widget/e$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/d$b;,
        Landroid/support/v4/widget/d$a;
    }
.end annotation


# instance fields
.field protected b:Z

.field protected c:Z

.field protected d:Landroid/database/Cursor;

.field protected e:Landroid/content/Context;

.field protected f:I

.field protected g:Landroid/support/v4/widget/d$a;

.field protected h:Landroid/database/DataSetObserver;

.field protected i:Landroid/support/v4/widget/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .registers 8

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p3, :cond_9

    const/4 p3, 0x1

    goto :goto_a

    :cond_9
    const/4 p3, 0x2

    :goto_a
    and-int/lit8 v2, p3, 0x1

    const/4 v3, 0x0

    if-ne v2, v1, :cond_14

    or-int/lit8 p3, p3, 0x2

    iput-boolean v1, p0, Landroid/support/v4/widget/d;->c:Z

    goto :goto_16

    :cond_14
    iput-boolean v3, p0, Landroid/support/v4/widget/d;->c:Z

    :goto_16
    if-eqz p2, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    iput-object p2, p0, Landroid/support/v4/widget/d;->d:Landroid/database/Cursor;

    iput-boolean v1, p0, Landroid/support/v4/widget/d;->b:Z

    iput-object p1, p0, Landroid/support/v4/widget/d;->e:Landroid/content/Context;

    if-eqz v1, :cond_29

    const-string p1, "_id"

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    goto :goto_2a

    :cond_29
    const/4 p1, -0x1

    :goto_2a
    iput p1, p0, Landroid/support/v4/widget/d;->f:I

    and-int/lit8 p1, p3, 0x2

    if-ne p1, v0, :cond_3f

    new-instance p1, Landroid/support/v4/widget/d$a;

    invoke-direct {p1, p0}, Landroid/support/v4/widget/d$a;-><init>(Landroid/support/v4/widget/d;)V

    iput-object p1, p0, Landroid/support/v4/widget/d;->g:Landroid/support/v4/widget/d$a;

    new-instance p1, Landroid/support/v4/widget/d$b;

    invoke-direct {p1, p0}, Landroid/support/v4/widget/d$b;-><init>(Landroid/support/v4/widget/d;)V

    iput-object p1, p0, Landroid/support/v4/widget/d;->h:Landroid/database/DataSetObserver;

    goto :goto_44

    :cond_3f
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v4/widget/d;->g:Landroid/support/v4/widget/d$a;

    iput-object p1, p0, Landroid/support/v4/widget/d;->h:Landroid/database/DataSetObserver;

    :goto_44
    if-eqz v1, :cond_54

    iget-object p1, p0, Landroid/support/v4/widget/d;->g:Landroid/support/v4/widget/d$a;

    if-eqz p1, :cond_4d

    invoke-interface {p2, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    :cond_4d
    iget-object p1, p0, Landroid/support/v4/widget/d;->h:Landroid/database/DataSetObserver;

    if-eqz p1, :cond_54

    invoke-interface {p2, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_54
    return-void
.end method


# virtual methods
.method public a()Landroid/database/Cursor;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/widget/d;->d:Landroid/database/Cursor;

    return-object v0
.end method

.method public abstract a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public a(Landroid/database/Cursor;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/widget/d;->d:Landroid/database/Cursor;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x0

    goto :goto_40

    :cond_6
    if-eqz v0, :cond_16

    iget-object v1, p0, Landroid/support/v4/widget/d;->g:Landroid/support/v4/widget/d$a;

    if-eqz v1, :cond_f

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_f
    iget-object v1, p0, Landroid/support/v4/widget/d;->h:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_16
    iput-object p1, p0, Landroid/support/v4/widget/d;->d:Landroid/database/Cursor;

    if-eqz p1, :cond_37

    iget-object v1, p0, Landroid/support/v4/widget/d;->g:Landroid/support/v4/widget/d$a;

    if-eqz v1, :cond_21

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    :cond_21
    iget-object v1, p0, Landroid/support/v4/widget/d;->h:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_28

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_28
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/support/v4/widget/d;->f:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/widget/d;->b:Z

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_40

    :cond_37
    const/4 p1, -0x1

    iput p1, p0, Landroid/support/v4/widget/d;->f:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v4/widget/d;->b:Z

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    :goto_40
    if-eqz v0, :cond_45

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_45
    return-void
.end method

.method public abstract a(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end method

.method public abstract b(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getCount()I
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/widget/d;->b:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/support/v4/widget/d;->d:Landroid/database/Cursor;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    iget-boolean v0, p0, Landroid/support/v4/widget/d;->b:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/support/v4/widget/d;->d:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    if-nez p2, :cond_13

    iget-object p1, p0, Landroid/support/v4/widget/d;->e:Landroid/content/Context;

    iget-object p2, p0, Landroid/support/v4/widget/d;->d:Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/widget/d;->a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_13
    iget-object p1, p0, Landroid/support/v4/widget/d;->e:Landroid/content/Context;

    iget-object p3, p0, Landroid/support/v4/widget/d;->d:Landroid/database/Cursor;

    invoke-virtual {p0, p2, p1, p3}, Landroid/support/v4/widget/d;->a(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    return-object p2

    :cond_1b
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFilter()Landroid/widget/Filter;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/widget/d;->i:Landroid/support/v4/widget/e;

    if-nez v0, :cond_b

    new-instance v0, Landroid/support/v4/widget/e;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/e;-><init>(Landroid/support/v4/widget/e$a;)V

    iput-object v0, p0, Landroid/support/v4/widget/d;->i:Landroid/support/v4/widget/e;

    :cond_b
    iget-object v0, p0, Landroid/support/v4/widget/d;->i:Landroid/support/v4/widget/e;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-boolean v0, p0, Landroid/support/v4/widget/d;->b:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v4/widget/d;->d:Landroid/database/Cursor;

    if-eqz v0, :cond_e

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object p1, p0, Landroid/support/v4/widget/d;->d:Landroid/database/Cursor;

    return-object p1

    :cond_e
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .registers 5

    iget-boolean v0, p0, Landroid/support/v4/widget/d;->b:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/support/v4/widget/d;->d:Landroid/database/Cursor;

    if-eqz v0, :cond_19

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_19

    iget-object p1, p0, Landroid/support/v4/widget/d;->d:Landroid/database/Cursor;

    iget v0, p0, Landroid/support/v4/widget/d;->f:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0

    :cond_19
    return-wide v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    iget-boolean v0, p0, Landroid/support/v4/widget/d;->b:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/support/v4/widget/d;->d:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    if-nez p2, :cond_16

    iget-object p1, p0, Landroid/support/v4/widget/d;->e:Landroid/content/Context;

    iget-object p2, p0, Landroid/support/v4/widget/d;->d:Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/widget/d;->b(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_16
    iget-object p1, p0, Landroid/support/v4/widget/d;->e:Landroid/content/Context;

    iget-object p3, p0, Landroid/support/v4/widget/d;->d:Landroid/database/Cursor;

    invoke-virtual {p0, p2, p1, p3}, Landroid/support/v4/widget/d;->a(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    return-object p2

    :cond_1e
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "couldn\'t move cursor to position "

    invoke-static {p3, p1}, Ld/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "this should only be called when the cursor is valid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
