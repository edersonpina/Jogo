.class Landroid/support/v4/content/d$e;
.super Landroid/os/Handler;
.source "ModernAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/content/d$d;

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_15

    const/4 v1, 0x2

    if-eq p1, v1, :cond_d

    goto :goto_1f

    :cond_d
    iget-object p1, v0, Landroid/support/v4/content/d$d;->a:Landroid/support/v4/content/d;

    iget-object v0, v0, Landroid/support/v4/content/d$d;->b:[Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/support/v4/content/d;->b()V

    goto :goto_1f

    :cond_15
    iget-object p1, v0, Landroid/support/v4/content/d$d;->a:Landroid/support/v4/content/d;

    iget-object v0, v0, Landroid/support/v4/content/d$d;->b:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/support/v4/content/d;->a(Ljava/lang/Object;)V

    :goto_1f
    return-void
.end method
