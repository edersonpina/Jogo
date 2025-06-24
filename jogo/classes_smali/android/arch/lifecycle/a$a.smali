.class public final enum Landroid/arch/lifecycle/a$a;
.super Ljava/lang/Enum;
.source "Lifecycle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/arch/lifecycle/a$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/arch/lifecycle/a$a;

.field public static final enum ON_ANY:Landroid/arch/lifecycle/a$a;

.field public static final enum ON_CREATE:Landroid/arch/lifecycle/a$a;

.field public static final enum ON_DESTROY:Landroid/arch/lifecycle/a$a;

.field public static final enum ON_PAUSE:Landroid/arch/lifecycle/a$a;

.field public static final enum ON_RESUME:Landroid/arch/lifecycle/a$a;

.field public static final enum ON_START:Landroid/arch/lifecycle/a$a;

.field public static final enum ON_STOP:Landroid/arch/lifecycle/a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Landroid/arch/lifecycle/a$a;

    const/4 v1, 0x0

    const-string v2, "ON_CREATE"

    invoke-direct {v0, v2, v1}, Landroid/arch/lifecycle/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/arch/lifecycle/a$a;->ON_CREATE:Landroid/arch/lifecycle/a$a;

    new-instance v0, Landroid/arch/lifecycle/a$a;

    const/4 v2, 0x1

    const-string v3, "ON_START"

    invoke-direct {v0, v3, v2}, Landroid/arch/lifecycle/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/arch/lifecycle/a$a;->ON_START:Landroid/arch/lifecycle/a$a;

    new-instance v0, Landroid/arch/lifecycle/a$a;

    const/4 v3, 0x2

    const-string v4, "ON_RESUME"

    invoke-direct {v0, v4, v3}, Landroid/arch/lifecycle/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/arch/lifecycle/a$a;->ON_RESUME:Landroid/arch/lifecycle/a$a;

    new-instance v0, Landroid/arch/lifecycle/a$a;

    const/4 v4, 0x3

    const-string v5, "ON_PAUSE"

    invoke-direct {v0, v5, v4}, Landroid/arch/lifecycle/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/arch/lifecycle/a$a;->ON_PAUSE:Landroid/arch/lifecycle/a$a;

    new-instance v0, Landroid/arch/lifecycle/a$a;

    const/4 v5, 0x4

    const-string v6, "ON_STOP"

    invoke-direct {v0, v6, v5}, Landroid/arch/lifecycle/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/arch/lifecycle/a$a;->ON_STOP:Landroid/arch/lifecycle/a$a;

    new-instance v0, Landroid/arch/lifecycle/a$a;

    const/4 v6, 0x5

    const-string v7, "ON_DESTROY"

    invoke-direct {v0, v7, v6}, Landroid/arch/lifecycle/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/arch/lifecycle/a$a;->ON_DESTROY:Landroid/arch/lifecycle/a$a;

    new-instance v0, Landroid/arch/lifecycle/a$a;

    const/4 v7, 0x6

    const-string v8, "ON_ANY"

    invoke-direct {v0, v8, v7}, Landroid/arch/lifecycle/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/arch/lifecycle/a$a;->ON_ANY:Landroid/arch/lifecycle/a$a;

    const/4 v0, 0x7

    new-array v0, v0, [Landroid/arch/lifecycle/a$a;

    sget-object v8, Landroid/arch/lifecycle/a$a;->ON_CREATE:Landroid/arch/lifecycle/a$a;

    aput-object v8, v0, v1

    sget-object v1, Landroid/arch/lifecycle/a$a;->ON_START:Landroid/arch/lifecycle/a$a;

    aput-object v1, v0, v2

    sget-object v1, Landroid/arch/lifecycle/a$a;->ON_RESUME:Landroid/arch/lifecycle/a$a;

    aput-object v1, v0, v3

    sget-object v1, Landroid/arch/lifecycle/a$a;->ON_PAUSE:Landroid/arch/lifecycle/a$a;

    aput-object v1, v0, v4

    sget-object v1, Landroid/arch/lifecycle/a$a;->ON_STOP:Landroid/arch/lifecycle/a$a;

    aput-object v1, v0, v5

    sget-object v1, Landroid/arch/lifecycle/a$a;->ON_DESTROY:Landroid/arch/lifecycle/a$a;

    aput-object v1, v0, v6

    sget-object v1, Landroid/arch/lifecycle/a$a;->ON_ANY:Landroid/arch/lifecycle/a$a;

    aput-object v1, v0, v7

    sput-object v0, Landroid/arch/lifecycle/a$a;->$VALUES:[Landroid/arch/lifecycle/a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/arch/lifecycle/a$a;
    .registers 2

    const-class v0, Landroid/arch/lifecycle/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/arch/lifecycle/a$a;

    return-object p0
.end method

.method public static values()[Landroid/arch/lifecycle/a$a;
    .registers 1

    sget-object v0, Landroid/arch/lifecycle/a$a;->$VALUES:[Landroid/arch/lifecycle/a$a;

    invoke-virtual {v0}, [Landroid/arch/lifecycle/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/arch/lifecycle/a$a;

    return-object v0
.end method
