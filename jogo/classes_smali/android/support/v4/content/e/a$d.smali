.class public final Landroid/support/v4/content/e/a$d;
.super Ljava/lang/Object;
.source "FontResourcesParserCompat.java"

# interfaces
.implements Landroid/support/v4/content/e/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field private final a:Lb/b/c/c/a;

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(Lb/b/c/c/a;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/content/e/a$d;->a:Lb/b/c/c/a;

    iput p2, p0, Landroid/support/v4/content/e/a$d;->c:I

    iput p3, p0, Landroid/support/v4/content/e/a$d;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Landroid/support/v4/content/e/a$d;->c:I

    return v0
.end method

.method public b()Lb/b/c/c/a;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/content/e/a$d;->a:Lb/b/c/c/a;

    return-object v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Landroid/support/v4/content/e/a$d;->b:I

    return v0
.end method
