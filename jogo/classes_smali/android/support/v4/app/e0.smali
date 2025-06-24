.class public Landroid/support/v4/app/e0;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# instance fields
.field final a:Landroid/os/Bundle;

.field private final b:[Landroid/support/v4/app/l0;

.field private final c:[Landroid/support/v4/app/l0;

.field private d:Z

.field public e:I

.field public f:Ljava/lang/CharSequence;

.field public g:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/support/v4/app/e0;->e:I

    invoke-static {p2}, Landroid/support/v4/app/g0;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/e0;->f:Ljava/lang/CharSequence;

    iput-object p3, p0, Landroid/support/v4/app/e0;->g:Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/support/v4/app/e0;->a:Landroid/os/Bundle;

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v4/app/e0;->b:[Landroid/support/v4/app/l0;

    iput-object p1, p0, Landroid/support/v4/app/e0;->c:[Landroid/support/v4/app/l0;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/app/e0;->d:Z

    return-void
.end method


# virtual methods
.method public a()Landroid/app/PendingIntent;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/e0;->g:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/app/e0;->d:Z

    return v0
.end method

.method public c()[Landroid/support/v4/app/l0;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/e0;->c:[Landroid/support/v4/app/l0;

    return-object v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Landroid/support/v4/app/e0;->e:I

    return v0
.end method

.method public e()[Landroid/support/v4/app/l0;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/e0;->b:[Landroid/support/v4/app/l0;

    return-object v0
.end method

.method public f()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/e0;->f:Ljava/lang/CharSequence;

    return-object v0
.end method
