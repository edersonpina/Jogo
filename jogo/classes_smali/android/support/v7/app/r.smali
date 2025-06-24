.class Landroid/support/v7/app/r;
.super Landroid/support/v7/app/q;
.source "AppCompatDelegateImplV23.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/r$a;
    }
.end annotation


# instance fields
.field private final W:Landroid/app/UiModeManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/l;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/app/q;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/l;)V

    const-string p2, "uimode"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/UiModeManager;

    iput-object p1, p0, Landroid/support/v7/app/r;->W:Landroid/app/UiModeManager;

    return-void
.end method


# virtual methods
.method a(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .registers 3

    new-instance v0, Landroid/support/v7/app/r$a;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/r$a;-><init>(Landroid/support/v7/app/r;Landroid/view/Window$Callback;)V

    return-object v0
.end method

.method g(I)I
    .registers 3

    if-nez p1, :cond_c

    iget-object v0, p0, Landroid/support/v7/app/r;->W:Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v0

    if-nez v0, :cond_c

    const/4 p1, -0x1

    return p1

    :cond_c
    invoke-super {p0, p1}, Landroid/support/v7/app/q;->g(I)I

    move-result p1

    return p1
.end method
