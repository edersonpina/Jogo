.class public Landroid/support/v7/app/k$a;
.super Ljava/lang/Object;
.source "AlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/support/v7/app/AlertController$b;

.field private final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v7/app/k;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/support/v7/app/AlertController$b;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-static {p1, v0}, Landroid/support/v7/app/k;->a(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, p1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v2}, Landroid/support/v7/app/AlertController$b;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/app/k$a;->a:Landroid/support/v7/app/AlertController$b;

    iput v0, p0, Landroid/support/v7/app/k$a;->b:I

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface$OnKeyListener;)Landroid/support/v7/app/k$a;
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/k$a;->a:Landroid/support/v7/app/AlertController$b;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$b;->r:Landroid/content/DialogInterface$OnKeyListener;

    return-object p0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/app/k$a;
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/k$a;->a:Landroid/support/v7/app/AlertController$b;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$b;->d:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public a(Landroid/view/View;)Landroid/support/v7/app/k$a;
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/k$a;->a:Landroid/support/v7/app/AlertController$b;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$b;->g:Landroid/view/View;

    return-object p0
.end method

.method public a(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/k$a;
    .registers 4

    iget-object v0, p0, Landroid/support/v7/app/k$a;->a:Landroid/support/v7/app/AlertController$b;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$b;->t:Landroid/widget/ListAdapter;

    iput-object p2, v0, Landroid/support/v7/app/AlertController$b;->u:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Landroid/support/v7/app/k$a;
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/k$a;->a:Landroid/support/v7/app/AlertController$b;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$b;->f:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public a()Landroid/support/v7/app/k;
    .registers 15

    new-instance v0, Landroid/support/v7/app/k;

    iget-object v1, p0, Landroid/support/v7/app/k$a;->a:Landroid/support/v7/app/AlertController$b;

    iget-object v1, v1, Landroid/support/v7/app/AlertController$b;->a:Landroid/content/Context;

    iget v2, p0, Landroid/support/v7/app/k$a;->b:I

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/k;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Landroid/support/v7/app/k$a;->a:Landroid/support/v7/app/AlertController$b;

    iget-object v2, v0, Landroid/support/v7/app/k;->c:Landroid/support/v7/app/AlertController;

    iget-object v3, v1, Landroid/support/v7/app/AlertController$b;->g:Landroid/view/View;

    if-eqz v3, :cond_17

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertController;->a(Landroid/view/View;)V

    goto :goto_37

    :cond_17
    iget-object v3, v1, Landroid/support/v7/app/AlertController$b;->f:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1e

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertController;->b(Ljava/lang/CharSequence;)V

    :cond_1e
    iget-object v3, v1, Landroid/support/v7/app/AlertController$b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_25

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertController;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_25
    iget v3, v1, Landroid/support/v7/app/AlertController$b;->c:I

    if-eqz v3, :cond_2c

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertController;->b(I)V

    :cond_2c
    iget v3, v1, Landroid/support/v7/app/AlertController$b;->e:I

    if-eqz v3, :cond_37

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertController;->a(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertController;->b(I)V

    :cond_37
    :goto_37
    iget-object v3, v1, Landroid/support/v7/app/AlertController$b;->h:Ljava/lang/CharSequence;

    if-eqz v3, :cond_3e

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertController;->a(Ljava/lang/CharSequence;)V

    :cond_3e
    iget-object v3, v1, Landroid/support/v7/app/AlertController$b;->i:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    if-eqz v3, :cond_49

    const/4 v5, -0x1

    iget-object v6, v1, Landroid/support/v7/app/AlertController$b;->j:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v5, v3, v6, v4}, Landroid/support/v7/app/AlertController;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    :cond_49
    iget-object v3, v1, Landroid/support/v7/app/AlertController$b;->k:Ljava/lang/CharSequence;

    if-eqz v3, :cond_53

    const/4 v5, -0x2

    iget-object v6, v1, Landroid/support/v7/app/AlertController$b;->l:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v5, v3, v6, v4}, Landroid/support/v7/app/AlertController;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    :cond_53
    iget-object v3, v1, Landroid/support/v7/app/AlertController$b;->m:Ljava/lang/CharSequence;

    if-eqz v3, :cond_5d

    const/4 v5, -0x3

    iget-object v6, v1, Landroid/support/v7/app/AlertController$b;->n:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v5, v3, v6, v4}, Landroid/support/v7/app/AlertController;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    :cond_5d
    iget-object v3, v1, Landroid/support/v7/app/AlertController$b;->s:[Ljava/lang/CharSequence;

    const/4 v10, 0x1

    if-nez v3, :cond_6a

    iget-object v3, v1, Landroid/support/v7/app/AlertController$b;->H:Landroid/database/Cursor;

    if-nez v3, :cond_6a

    iget-object v3, v1, Landroid/support/v7/app/AlertController$b;->t:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_108

    :cond_6a
    iget-object v3, v1, Landroid/support/v7/app/AlertController$b;->b:Landroid/view/LayoutInflater;

    iget v5, v2, Landroid/support/v7/app/AlertController;->H:I

    invoke-virtual {v3, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroid/support/v7/app/AlertController$RecycleListView;

    iget-boolean v3, v1, Landroid/support/v7/app/AlertController$b;->D:Z

    if-eqz v3, :cond_9c

    iget-object v6, v1, Landroid/support/v7/app/AlertController$b;->H:Landroid/database/Cursor;

    if-nez v6, :cond_8f

    new-instance v12, Landroid/support/v7/app/g;

    iget-object v5, v1, Landroid/support/v7/app/AlertController$b;->a:Landroid/content/Context;

    iget v6, v2, Landroid/support/v7/app/AlertController;->I:I

    const v7, 0x1020014

    iget-object v8, v1, Landroid/support/v7/app/AlertController$b;->s:[Ljava/lang/CharSequence;

    move-object v3, v12

    move-object v4, v1

    move-object v9, v11

    invoke-direct/range {v3 .. v9}, Landroid/support/v7/app/g;-><init>(Landroid/support/v7/app/AlertController$b;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroid/support/v7/app/AlertController$RecycleListView;)V

    goto :goto_d0

    :cond_8f
    new-instance v12, Landroid/support/v7/app/h;

    iget-object v5, v1, Landroid/support/v7/app/AlertController$b;->a:Landroid/content/Context;

    const/4 v7, 0x0

    move-object v3, v12

    move-object v4, v1

    move-object v8, v11

    move-object v9, v2

    invoke-direct/range {v3 .. v9}, Landroid/support/v7/app/h;-><init>(Landroid/support/v7/app/AlertController$b;Landroid/content/Context;Landroid/database/Cursor;ZLandroid/support/v7/app/AlertController$RecycleListView;Landroid/support/v7/app/AlertController;)V

    goto :goto_d0

    :cond_9c
    iget-boolean v3, v1, Landroid/support/v7/app/AlertController$b;->E:Z

    if-eqz v3, :cond_a3

    iget v3, v2, Landroid/support/v7/app/AlertController;->J:I

    goto :goto_a5

    :cond_a3
    iget v3, v2, Landroid/support/v7/app/AlertController;->K:I

    :goto_a5
    move v6, v3

    iget-object v7, v1, Landroid/support/v7/app/AlertController$b;->H:Landroid/database/Cursor;

    const v3, 0x1020014

    if-eqz v7, :cond_c2

    new-instance v12, Landroid/widget/SimpleCursorAdapter;

    iget-object v5, v1, Landroid/support/v7/app/AlertController$b;->a:Landroid/content/Context;

    new-array v8, v10, [Ljava/lang/String;

    iget-object v4, v1, Landroid/support/v7/app/AlertController$b;->I:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    new-array v13, v10, [I

    aput v3, v13, v9

    move-object v4, v12

    move-object v9, v13

    invoke-direct/range {v4 .. v9}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    goto :goto_d0

    :cond_c2
    iget-object v12, v1, Landroid/support/v7/app/AlertController$b;->t:Landroid/widget/ListAdapter;

    if-eqz v12, :cond_c7

    goto :goto_d0

    :cond_c7
    new-instance v12, Landroid/support/v7/app/AlertController$d;

    iget-object v4, v1, Landroid/support/v7/app/AlertController$b;->a:Landroid/content/Context;

    iget-object v5, v1, Landroid/support/v7/app/AlertController$b;->s:[Ljava/lang/CharSequence;

    invoke-direct {v12, v4, v6, v3, v5}, Landroid/support/v7/app/AlertController$d;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    :goto_d0
    iput-object v12, v2, Landroid/support/v7/app/AlertController;->D:Landroid/widget/ListAdapter;

    iget v3, v1, Landroid/support/v7/app/AlertController$b;->F:I

    iput v3, v2, Landroid/support/v7/app/AlertController;->E:I

    iget-object v3, v1, Landroid/support/v7/app/AlertController$b;->u:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v3, :cond_e3

    new-instance v3, Landroid/support/v7/app/i;

    invoke-direct {v3, v1, v2}, Landroid/support/v7/app/i;-><init>(Landroid/support/v7/app/AlertController$b;Landroid/support/v7/app/AlertController;)V

    invoke-virtual {v11, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_ef

    :cond_e3
    iget-object v3, v1, Landroid/support/v7/app/AlertController$b;->G:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v3, :cond_ef

    new-instance v3, Landroid/support/v7/app/j;

    invoke-direct {v3, v1, v11, v2}, Landroid/support/v7/app/j;-><init>(Landroid/support/v7/app/AlertController$b;Landroid/support/v7/app/AlertController$RecycleListView;Landroid/support/v7/app/AlertController;)V

    invoke-virtual {v11, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_ef
    :goto_ef
    iget-object v3, v1, Landroid/support/v7/app/AlertController$b;->K:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v3, :cond_f6

    invoke-virtual {v11, v3}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_f6
    iget-boolean v3, v1, Landroid/support/v7/app/AlertController$b;->E:Z

    if-eqz v3, :cond_fe

    invoke-virtual {v11, v10}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_106

    :cond_fe
    iget-boolean v3, v1, Landroid/support/v7/app/AlertController$b;->D:Z

    if-eqz v3, :cond_106

    const/4 v3, 0x2

    invoke-virtual {v11, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    :cond_106
    :goto_106
    iput-object v11, v2, Landroid/support/v7/app/AlertController;->f:Landroid/widget/ListView;

    :cond_108
    iget-object v3, v1, Landroid/support/v7/app/AlertController$b;->w:Landroid/view/View;

    if-eqz v3, :cond_120

    iget-boolean v4, v1, Landroid/support/v7/app/AlertController$b;->B:Z

    if-eqz v4, :cond_11c

    iget v4, v1, Landroid/support/v7/app/AlertController$b;->x:I

    iget v5, v1, Landroid/support/v7/app/AlertController$b;->y:I

    iget v6, v1, Landroid/support/v7/app/AlertController$b;->z:I

    iget v7, v1, Landroid/support/v7/app/AlertController$b;->A:I

    invoke-virtual/range {v2 .. v7}, Landroid/support/v7/app/AlertController;->a(Landroid/view/View;IIII)V

    goto :goto_127

    :cond_11c
    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertController;->b(Landroid/view/View;)V

    goto :goto_127

    :cond_120
    iget v1, v1, Landroid/support/v7/app/AlertController$b;->v:I

    if-eqz v1, :cond_127

    invoke-virtual {v2, v1}, Landroid/support/v7/app/AlertController;->c(I)V

    :cond_127
    :goto_127
    iget-object v1, p0, Landroid/support/v7/app/k$a;->a:Landroid/support/v7/app/AlertController$b;

    iget-boolean v1, v1, Landroid/support/v7/app/AlertController$b;->o:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v1, p0, Landroid/support/v7/app/k$a;->a:Landroid/support/v7/app/AlertController$b;

    iget-boolean v1, v1, Landroid/support/v7/app/AlertController$b;->o:Z

    if-eqz v1, :cond_137

    invoke-virtual {v0, v10}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :cond_137
    iget-object v1, p0, Landroid/support/v7/app/k$a;->a:Landroid/support/v7/app/AlertController$b;

    iget-object v1, v1, Landroid/support/v7/app/AlertController$b;->p:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v1, p0, Landroid/support/v7/app/k$a;->a:Landroid/support/v7/app/AlertController$b;

    iget-object v1, v1, Landroid/support/v7/app/AlertController$b;->q:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Landroid/support/v7/app/k$a;->a:Landroid/support/v7/app/AlertController$b;

    iget-object v1, v1, Landroid/support/v7/app/AlertController$b;->r:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_14e

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_14e
    return-object v0
.end method

.method public b()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/k$a;->a:Landroid/support/v7/app/AlertController$b;

    iget-object v0, v0, Landroid/support/v7/app/AlertController$b;->a:Landroid/content/Context;

    return-object v0
.end method
