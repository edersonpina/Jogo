.class Landroid/support/v7/view/menu/e$d;
.super Ljava/lang/Object;
.source "CascadingMenuPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/menu/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field public final a:Landroid/support/v7/widget/o0;

.field public final b:Landroid/support/v7/view/menu/h;

.field public final c:I


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/o0;Landroid/support/v7/view/menu/h;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v7/view/menu/e$d;->a:Landroid/support/v7/widget/o0;

    iput-object p2, p0, Landroid/support/v7/view/menu/e$d;->b:Landroid/support/v7/view/menu/h;

    iput p3, p0, Landroid/support/v7/view/menu/e$d;->c:I

    return-void
.end method


# virtual methods
.method public a()Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/view/menu/e$d;->a:Landroid/support/v7/widget/o0;

    invoke-virtual {v0}, Landroid/support/v7/widget/l0;->c()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method
