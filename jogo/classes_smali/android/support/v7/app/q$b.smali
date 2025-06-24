.class final Landroid/support/v7/app/q$b;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV14.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/support/v7/app/b0;

.field private b:Z

.field private c:Landroid/content/BroadcastReceiver;

.field private d:Landroid/content/IntentFilter;

.field final synthetic e:Landroid/support/v7/app/q;


# direct methods
.method constructor <init>(Landroid/support/v7/app/q;Landroid/support/v7/app/b0;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v7/app/q$b;->e:Landroid/support/v7/app/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/support/v7/app/q$b;->a:Landroid/support/v7/app/b0;

    invoke-virtual {p2}, Landroid/support/v7/app/b0;->a()Z

    move-result p1

    iput-boolean p1, p0, Landroid/support/v7/app/q$b;->b:Z

    return-void
.end method


# virtual methods
.method final a()V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/q$b;->c:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_e

    iget-object v1, p0, Landroid/support/v7/app/q$b;->e:Landroid/support/v7/app/q;

    iget-object v1, v1, Landroid/support/v7/app/n;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/q$b;->c:Landroid/content/BroadcastReceiver;

    :cond_e
    return-void
.end method

.method final b()V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/q$b;->a:Landroid/support/v7/app/b0;

    invoke-virtual {v0}, Landroid/support/v7/app/b0;->a()Z

    move-result v0

    iget-boolean v1, p0, Landroid/support/v7/app/q$b;->b:Z

    if-eq v0, v1, :cond_11

    iput-boolean v0, p0, Landroid/support/v7/app/q$b;->b:Z

    iget-object v0, p0, Landroid/support/v7/app/q$b;->e:Landroid/support/v7/app/q;

    invoke-virtual {v0}, Landroid/support/v7/app/q;->a()Z

    :cond_11
    return-void
.end method

.method final c()I
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/q$b;->a:Landroid/support/v7/app/b0;

    invoke-virtual {v0}, Landroid/support/v7/app/b0;->a()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/app/q$b;->b:Z

    iget-boolean v0, p0, Landroid/support/v7/app/q$b;->b:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x2

    goto :goto_f

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0
.end method

.method final d()V
    .registers 4

    invoke-virtual {p0}, Landroid/support/v7/app/q$b;->a()V

    iget-object v0, p0, Landroid/support/v7/app/q$b;->c:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_e

    new-instance v0, Landroid/support/v7/app/q$b$a;

    invoke-direct {v0, p0}, Landroid/support/v7/app/q$b$a;-><init>(Landroid/support/v7/app/q$b;)V

    iput-object v0, p0, Landroid/support/v7/app/q$b;->c:Landroid/content/BroadcastReceiver;

    :cond_e
    iget-object v0, p0, Landroid/support/v7/app/q$b;->d:Landroid/content/IntentFilter;

    if-nez v0, :cond_2e

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/q$b;->d:Landroid/content/IntentFilter;

    iget-object v0, p0, Landroid/support/v7/app/q$b;->d:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v7/app/q$b;->d:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v7/app/q$b;->d:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_2e
    iget-object v0, p0, Landroid/support/v7/app/q$b;->e:Landroid/support/v7/app/q;

    iget-object v0, v0, Landroid/support/v7/app/n;->b:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v7/app/q$b;->c:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Landroid/support/v7/app/q$b;->d:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
