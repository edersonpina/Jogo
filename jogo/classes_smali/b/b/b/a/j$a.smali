.class Lb/b/b/a/j$a;
.super Lb/b/b/a/j$d;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/b/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lb/b/b/a/j$d;-><init>()V

    return-void
.end method

.method public constructor <init>(Lb/b/b/a/j$a;)V
    .registers 2

    invoke-direct {p0, p1}, Lb/b/b/a/j$d;-><init>(Lb/b/b/a/j$d;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6

    const-string v0, "pathData"

    invoke-static {p4, v0}, La/a/g;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_9

    return-void

    :cond_9
    sget-object p4, Lb/b/b/a/a;->d:[I

    invoke-static {p1, p3, p2, p4}, La/a/g;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_18

    iput-object p2, p0, Lb/b/b/a/j$d;->b:Ljava/lang/String;

    :cond_18
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_25

    invoke-static {p2}, Lb/b/c/a/b;->a(Ljava/lang/String;)[Lb/b/c/a/b$a;

    move-result-object p2

    iput-object p2, p0, Lb/b/b/a/j$d;->a:[Lb/b/c/a/b$a;

    :cond_25
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
