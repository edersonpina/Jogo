.class public final Landroid/support/v4/content/e/a$c;
.super Ljava/lang/Object;
.source "FontResourcesParserCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:I

.field private c:Z

.field private d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IZI)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/content/e/a$c;->a:Ljava/lang/String;

    iput p2, p0, Landroid/support/v4/content/e/a$c;->b:I

    iput-boolean p3, p0, Landroid/support/v4/content/e/a$c;->c:Z

    iput p4, p0, Landroid/support/v4/content/e/a$c;->d:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/content/e/a$c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Landroid/support/v4/content/e/a$c;->d:I

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Landroid/support/v4/content/e/a$c;->b:I

    return v0
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/content/e/a$c;->c:Z

    return v0
.end method
