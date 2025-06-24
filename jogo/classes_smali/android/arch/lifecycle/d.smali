.class public Landroid/arch/lifecycle/d;
.super Landroid/arch/lifecycle/a;
.source "LifecycleRegistry.java"


# instance fields
.field private a:Lb/a/a/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/a/a/a<",
            "Landroid/arch/lifecycle/b;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/arch/lifecycle/a$b;

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/arch/lifecycle/c;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/arch/lifecycle/a$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/arch/lifecycle/c;)V
    .registers 3

    invoke-direct {p0}, Landroid/arch/lifecycle/a;-><init>()V

    new-instance v0, Lb/a/a/a/a;

    invoke-direct {v0}, Lb/a/a/a/a;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/d;->a:Lb/a/a/a/a;

    const/4 v0, 0x0

    iput v0, p0, Landroid/arch/lifecycle/d;->d:I

    iput-boolean v0, p0, Landroid/arch/lifecycle/d;->e:Z

    iput-boolean v0, p0, Landroid/arch/lifecycle/d;->f:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/d;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/arch/lifecycle/d;->c:Ljava/lang/ref/WeakReference;

    sget-object p1, Landroid/arch/lifecycle/a$b;->c:Landroid/arch/lifecycle/a$b;

    iput-object p1, p0, Landroid/arch/lifecycle/d;->b:Landroid/arch/lifecycle/a$b;

    return-void
.end method

.method static b(Landroid/arch/lifecycle/a$a;)Landroid/arch/lifecycle/a$b;
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_35

    const/4 v1, 0x1

    if-eq v0, v1, :cond_32

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2f

    const/4 v1, 0x3

    if-eq v0, v1, :cond_32

    const/4 v1, 0x4

    if-eq v0, v1, :cond_35

    const/4 v1, 0x5

    if-ne v0, v1, :cond_18

    sget-object p0, Landroid/arch/lifecycle/a$b;->b:Landroid/arch/lifecycle/a$b;

    return-object p0

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected event value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    sget-object p0, Landroid/arch/lifecycle/a$b;->f:Landroid/arch/lifecycle/a$b;

    return-object p0

    :cond_32
    sget-object p0, Landroid/arch/lifecycle/a$b;->e:Landroid/arch/lifecycle/a$b;

    return-object p0

    :cond_35
    sget-object p0, Landroid/arch/lifecycle/a$b;->d:Landroid/arch/lifecycle/a$b;

    return-object p0
.end method

.method private b(Landroid/arch/lifecycle/a$b;)V
    .registers 4

    iget-object v0, p0, Landroid/arch/lifecycle/d;->b:Landroid/arch/lifecycle/a$b;

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-object p1, p0, Landroid/arch/lifecycle/d;->b:Landroid/arch/lifecycle/a$b;

    iget-boolean p1, p0, Landroid/arch/lifecycle/d;->e:Z

    const/4 v0, 0x1

    if-nez p1, :cond_3a

    iget p1, p0, Landroid/arch/lifecycle/d;->d:I

    if-eqz p1, :cond_11

    goto :goto_3a

    :cond_11
    iput-boolean v0, p0, Landroid/arch/lifecycle/d;->e:Z

    iget-object p1, p0, Landroid/arch/lifecycle/d;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/arch/lifecycle/c;

    const/4 v0, 0x0

    if-nez p1, :cond_26

    const-string p1, "LifecycleRegistry"

    const-string v1, "LifecycleOwner is garbage collected, you shouldn\'t try dispatch new events from it."

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    :cond_26
    iget-object p1, p0, Landroid/arch/lifecycle/d;->a:Lb/a/a/a/a;

    invoke-virtual {p1}, Lb/a/a/a/b;->size()I

    move-result p1

    if-nez p1, :cond_33

    iput-boolean v0, p0, Landroid/arch/lifecycle/d;->f:Z

    :goto_30
    iput-boolean v0, p0, Landroid/arch/lifecycle/d;->e:Z

    return-void

    :cond_33
    iget-object p1, p0, Landroid/arch/lifecycle/d;->a:Lb/a/a/a/a;

    invoke-virtual {p1}, Lb/a/a/a/b;->a()Ljava/util/Map$Entry;

    const/4 p1, 0x0

    throw p1

    :cond_3a
    :goto_3a
    iput-boolean v0, p0, Landroid/arch/lifecycle/d;->f:Z

    return-void
.end method


# virtual methods
.method public a()Landroid/arch/lifecycle/a$b;
    .registers 2

    iget-object v0, p0, Landroid/arch/lifecycle/d;->b:Landroid/arch/lifecycle/a$b;

    return-object v0
.end method

.method public a(Landroid/arch/lifecycle/a$a;)V
    .registers 2

    invoke-static {p1}, Landroid/arch/lifecycle/d;->b(Landroid/arch/lifecycle/a$a;)Landroid/arch/lifecycle/a$b;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/arch/lifecycle/d;->b(Landroid/arch/lifecycle/a$b;)V

    return-void
.end method

.method public a(Landroid/arch/lifecycle/a$b;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/arch/lifecycle/d;->b(Landroid/arch/lifecycle/a$b;)V

    return-void
.end method
