.class public Lb/b/d/d/g;
.super Landroid/view/MenuInflater;
.source "SupportMenuInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/d/d/g$b;,
        Lb/b/d/d/g$a;
    }
.end annotation


# static fields
.field static final e:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static final f:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field final a:[Ljava/lang/Object;

.field final b:[Ljava/lang/Object;

.field c:Landroid/content/Context;

.field private d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lb/b/d/d/g;->e:[Ljava/lang/Class;

    sget-object v0, Lb/b/d/d/g;->e:[Ljava/lang/Class;

    sput-object v0, Lb/b/d/d/g;->f:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lb/b/d/d/g;->c:Landroid/content/Context;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lb/b/d/d/g;->a:[Ljava/lang/Object;

    iget-object p1, p0, Lb/b/d/d/g;->a:[Ljava/lang/Object;

    iput-object p1, p0, Lb/b/d/d/g;->b:[Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_5

    return-object p1

    :cond_5
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_13

    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lb/b/d/d/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_13
    return-object p1
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    .registers 15

    new-instance v0, Lb/b/d/d/g$b;

    invoke-direct {v0, p0, p3}, Lb/b/d/d/g$b;-><init>(Lb/b/d/d/g;Landroid/view/Menu;)V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p3

    :cond_9
    const/4 v1, 0x2

    const-string v2, "menu"

    const/4 v3, 0x1

    if-ne p3, v1, :cond_2a

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p3

    goto :goto_30

    :cond_1e
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Expecting menu, got "

    invoke-static {p2, p3}, Ld/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p3

    if-ne p3, v3, :cond_9

    :goto_30
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v4

    :goto_34
    if-nez v5, :cond_bc

    if-eq p3, v3, :cond_b4

    const-string v8, "item"

    const-string v9, "group"

    if-eq p3, v1, :cond_84

    const/4 v10, 0x3

    if-eq p3, v10, :cond_43

    goto/16 :goto_af

    :cond_43
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p3

    if-eqz v6, :cond_53

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_53

    const/4 p3, 0x0

    move-object v7, v4

    const/4 v6, 0x0

    goto :goto_af

    :cond_53
    invoke-virtual {p3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5d

    invoke-virtual {v0}, Lb/b/d/d/g$b;->d()V

    goto :goto_af

    :cond_5d
    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7b

    invoke-virtual {v0}, Lb/b/d/d/g$b;->c()Z

    move-result p3

    if-nez p3, :cond_af

    iget-object p3, v0, Lb/b/d/d/g$b;->A:Landroid/support/v4/view/b;

    if-eqz p3, :cond_77

    invoke-virtual {p3}, Landroid/support/v4/view/b;->a()Z

    move-result p3

    if-eqz p3, :cond_77

    invoke-virtual {v0}, Lb/b/d/d/g$b;->b()Landroid/view/SubMenu;

    goto :goto_af

    :cond_77
    invoke-virtual {v0}, Lb/b/d/d/g$b;->a()V

    goto :goto_af

    :cond_7b
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_af

    const/4 p3, 0x1

    const/4 v5, 0x1

    goto :goto_af

    :cond_84
    if-eqz v6, :cond_87

    goto :goto_af

    :cond_87
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_95

    invoke-virtual {v0, p2}, Lb/b/d/d/g$b;->a(Landroid/util/AttributeSet;)V

    goto :goto_af

    :cond_95
    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9f

    invoke-virtual {v0, p2}, Lb/b/d/d/g$b;->b(Landroid/util/AttributeSet;)V

    goto :goto_af

    :cond_9f
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ad

    invoke-virtual {v0}, Lb/b/d/d/g$b;->b()Landroid/view/SubMenu;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lb/b/d/d/g;->a(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V

    goto :goto_af

    :cond_ad
    const/4 v6, 0x1

    move-object v7, p3

    :cond_af
    :goto_af
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p3

    goto :goto_34

    :cond_b4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected end of document"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_bc
    return-void
.end method


# virtual methods
.method a()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lb/b/d/d/g;->d:Ljava/lang/Object;

    if-nez v0, :cond_c

    iget-object v0, p0, Lb/b/d/d/g;->c:Landroid/content/Context;

    invoke-direct {p0, v0}, Lb/b/d/d/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lb/b/d/d/g;->d:Ljava/lang/Object;

    :cond_c
    iget-object v0, p0, Lb/b/d/d/g;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public inflate(ILandroid/view/Menu;)V
    .registers 6

    const-string v0, "Error inflating menu XML"

    instance-of v1, p2, Lb/b/c/b/a/a;

    if-nez v1, :cond_a

    invoke-super {p0, p1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void

    :cond_a
    const/4 v1, 0x0

    :try_start_b
    iget-object v2, p0, Lb/b/d/d/g;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p1

    invoke-direct {p0, v1, p1, p2}, Lb/b/d/d/g;->a(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    :try_end_1c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_1c} :catch_29
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1c} :catch_22
    .catchall {:try_start_b .. :try_end_1c} :catchall_20

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    return-void

    :catchall_20
    move-exception p1

    goto :goto_30

    :catch_22
    move-exception p1

    :try_start_23
    new-instance p2, Landroid/view/InflateException;

    invoke-direct {p2, v0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_29
    move-exception p1

    new-instance p2, Landroid/view/InflateException;

    invoke-direct {p2, v0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_30
    .catchall {:try_start_23 .. :try_end_30} :catchall_20

    :goto_30
    if-eqz v1, :cond_35

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_35
    throw p1
.end method
