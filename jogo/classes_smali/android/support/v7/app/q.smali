.class Landroid/support/v7/app/q;
.super Landroid/support/v7/app/p;
.source "AppCompatDelegateImplV14.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/q$b;,
        Landroid/support/v7/app/q$a;
    }
.end annotation


# instance fields
.field private S:I

.field private T:Z

.field private U:Z

.field private V:Landroid/support/v7/app/q$b;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/l;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/app/p;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/l;)V

    const/16 p1, -0x64

    iput p1, p0, Landroid/support/v7/app/q;->S:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/app/q;->U:Z

    return-void
.end method


# virtual methods
.method a(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .registers 3

    new-instance v0, Landroid/support/v7/app/q$a;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/q$a;-><init>(Landroid/support/v7/app/q;Landroid/view/Window$Callback;)V

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(Landroid/os/Bundle;)V

    if-eqz p1, :cond_13

    iget v0, p0, Landroid/support/v7/app/q;->S:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_13

    const-string v0, "appcompat:local_night_mode"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/app/q;->S:I

    :cond_13
    return-void
.end method

.method public a()Z
    .registers 11

    iget v0, p0, Landroid/support/v7/app/q;->S:I

    const/4 v1, -0x1

    const/16 v2, -0x64

    if-eq v0, v2, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, -0x1

    :goto_9
    invoke-virtual {p0, v0}, Landroid/support/v7/app/q;->g(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v1, :cond_7f

    iget-object v1, p0, Landroid/support/v7/app/n;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v6, v5, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v6, v6, 0x30

    const/4 v7, 0x2

    if-ne v2, v7, :cond_25

    const/16 v2, 0x20

    goto :goto_27

    :cond_25
    const/16 v2, 0x10

    :goto_27
    if-eq v6, v2, :cond_7f

    iget-boolean v6, p0, Landroid/support/v7/app/q;->T:Z

    if-eqz v6, :cond_58

    iget-object v6, p0, Landroid/support/v7/app/n;->b:Landroid/content/Context;

    instance-of v7, v6, Landroid/app/Activity;

    if-eqz v7, :cond_58

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    :try_start_37
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, p0, Landroid/support/v7/app/n;->b:Landroid/content/Context;

    iget-object v9, p0, Landroid/support/v7/app/n;->b:Landroid/content/Context;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v6, v7, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ActivityInfo;->configChanges:I
    :try_end_4a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_37 .. :try_end_4a} :catch_4f

    and-int/lit16 v6, v6, 0x200

    if-nez v6, :cond_58

    goto :goto_57

    :catch_4f
    move-exception v3

    const-string v6, "AppCompatDelegate"

    const-string v7, "Exception while getting ActivityInfo"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_57
    const/4 v3, 0x1

    :cond_58
    if-eqz v3, :cond_62

    iget-object v1, p0, Landroid/support/v7/app/n;->b:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->recreate()V

    goto :goto_7e

    :cond_62
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3, v5}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v6, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v6, v6, -0x31

    or-int/2addr v2, v6

    iput v2, v3, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {v1, v3, v5}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_7e

    invoke-static {v1}, Landroid/support/v7/app/z;->a(Landroid/content/res/Resources;)Z

    :cond_7e
    :goto_7e
    const/4 v3, 0x1

    :cond_7f
    if-nez v0, :cond_97

    iget-object v0, p0, Landroid/support/v7/app/q;->V:Landroid/support/v7/app/q$b;

    if-nez v0, :cond_92

    new-instance v0, Landroid/support/v7/app/q$b;

    iget-object v1, p0, Landroid/support/v7/app/n;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v7/app/b0;->a(Landroid/content/Context;)Landroid/support/v7/app/b0;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/q$b;-><init>(Landroid/support/v7/app/q;Landroid/support/v7/app/b0;)V

    iput-object v0, p0, Landroid/support/v7/app/q;->V:Landroid/support/v7/app/q$b;

    :cond_92
    iget-object v0, p0, Landroid/support/v7/app/q;->V:Landroid/support/v7/app/q$b;

    invoke-virtual {v0}, Landroid/support/v7/app/q$b;->d()V

    :cond_97
    iput-boolean v4, p0, Landroid/support/v7/app/q;->T:Z

    return v3
.end method

.method public c(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v7/app/n;->c(Landroid/os/Bundle;)V

    iget v0, p0, Landroid/support/v7/app/q;->S:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_e

    const-string v1, "appcompat:local_night_mode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_e
    return-void
.end method

.method public d()V
    .registers 2

    invoke-super {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->d()V

    iget-object v0, p0, Landroid/support/v7/app/q;->V:Landroid/support/v7/app/q$b;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/support/v7/app/q$b;->a()V

    :cond_a
    return-void
.end method

.method public e()V
    .registers 1

    invoke-super {p0}, Landroid/support/v7/app/n;->e()V

    invoke-virtual {p0}, Landroid/support/v7/app/q;->a()Z

    return-void
.end method

.method public f()V
    .registers 2

    invoke-super {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->f()V

    iget-object v0, p0, Landroid/support/v7/app/q;->V:Landroid/support/v7/app/q$b;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/support/v7/app/q$b;->a()V

    :cond_a
    return-void
.end method

.method g(I)I
    .registers 3

    const/16 v0, -0x64

    if-eq p1, v0, :cond_1f

    if-eqz p1, :cond_7

    return p1

    :cond_7
    iget-object p1, p0, Landroid/support/v7/app/q;->V:Landroid/support/v7/app/q$b;

    if-nez p1, :cond_18

    new-instance p1, Landroid/support/v7/app/q$b;

    iget-object v0, p0, Landroid/support/v7/app/n;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v7/app/b0;->a(Landroid/content/Context;)Landroid/support/v7/app/b0;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Landroid/support/v7/app/q$b;-><init>(Landroid/support/v7/app/q;Landroid/support/v7/app/b0;)V

    iput-object p1, p0, Landroid/support/v7/app/q;->V:Landroid/support/v7/app/q$b;

    :cond_18
    iget-object p1, p0, Landroid/support/v7/app/q;->V:Landroid/support/v7/app/q$b;

    invoke-virtual {p1}, Landroid/support/v7/app/q$b;->c()I

    move-result p1

    return p1

    :cond_1f
    const/4 p1, -0x1

    return p1
.end method

.method public o()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/app/q;->U:Z

    return v0
.end method
