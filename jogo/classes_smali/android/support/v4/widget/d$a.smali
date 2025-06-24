.class Landroid/support/v4/widget/d$a;
.super Landroid/database/ContentObserver;
.source "CursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/widget/d;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/d;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/widget/d$a;->a:Landroid/support/v4/widget/d;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .registers 3

    iget-object p1, p0, Landroid/support/v4/widget/d$a;->a:Landroid/support/v4/widget/d;

    iget-boolean v0, p1, Landroid/support/v4/widget/d;->c:Z

    if-eqz v0, :cond_18

    iget-object v0, p1, Landroid/support/v4/widget/d;->d:Landroid/database/Cursor;

    if-eqz v0, :cond_18

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p1, Landroid/support/v4/widget/d;->d:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    iput-boolean v0, p1, Landroid/support/v4/widget/d;->b:Z

    :cond_18
    return-void
.end method
