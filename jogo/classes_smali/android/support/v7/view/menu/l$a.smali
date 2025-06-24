.class Landroid/support/v7/view/menu/l$a;
.super Landroid/support/v4/view/b;
.source "MenuItemWrapperICS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/menu/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final b:Landroid/view/ActionProvider;

.field final synthetic c:Landroid/support/v7/view/menu/l;


# direct methods
.method public constructor <init>(Landroid/support/v7/view/menu/l;Landroid/content/Context;Landroid/view/ActionProvider;)V
    .registers 4

    iput-object p1, p0, Landroid/support/v7/view/menu/l$a;->c:Landroid/support/v7/view/menu/l;

    invoke-direct {p0, p2}, Landroid/support/v4/view/b;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Landroid/support/v7/view/menu/l$a;->b:Landroid/view/ActionProvider;

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v7/view/menu/l$a;->b:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->hasSubMenu()Z

    move-result v0

    return v0
.end method

.method public c()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/view/menu/l$a;->b:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->onCreateActionView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
