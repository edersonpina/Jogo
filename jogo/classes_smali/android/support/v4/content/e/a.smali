.class public Landroid/support/v4/content/e/a;
.super Ljava/lang/Object;
.source "FontResourcesParserCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/e/a$b;,
        Landroid/support/v4/content/e/a$c;,
        Landroid/support/v4/content/e/a$d;,
        Landroid/support/v4/content/e/a$a;
    }
.end annotation


# direct methods
.method public static a(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/support/v4/content/e/a$a;
    .registers 14

    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_b

    if-eq v0, v1, :cond_b

    goto :goto_0

    :cond_b
    if-ne v0, v2, :cond_10f

    const-string v0, "font-family"

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10b

    invoke-static {p0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    sget-object v4, Lb/b/a/b;->FontFamily:[I

    invoke-virtual {p1, v0, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v4, Lb/b/a/b;->FontFamily_fontProviderAuthority:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lb/b/a/b;->FontFamily_fontProviderPackage:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lb/b/a/b;->FontFamily_fontProviderQuery:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lb/b/a/b;->FontFamily_fontProviderCerts:I

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    sget v9, Lb/b/a/b;->FontFamily_fontProviderFetchStrategy:I

    invoke-virtual {v0, v9, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v9

    sget v10, Lb/b/a/b;->FontFamily_fontProviderFetchTimeout:I

    const/16 v11, 0x1f4

    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v10

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v0, 0x3

    if-eqz v4, :cond_72

    if-eqz v5, :cond_72

    if-eqz v6, :cond_72

    :goto_58
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    if-eq v1, v0, :cond_62

    invoke-static {p0}, Landroid/support/v4/content/e/a;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_58

    :cond_62
    invoke-static {p1, v7}, Landroid/support/v4/content/e/a;->a(Landroid/content/res/Resources;I)Ljava/util/List;

    move-result-object p0

    new-instance v3, Landroid/support/v4/content/e/a$d;

    new-instance p1, Lb/b/c/c/a;

    invoke-direct {p1, v4, v5, v6, p0}, Lb/b/c/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-direct {v3, p1, v9, v10}, Landroid/support/v4/content/e/a$d;-><init>(Lb/b/c/c/a;II)V

    goto/16 :goto_10e

    :cond_72
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_77
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-eq v5, v0, :cond_f2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    if-eq v5, v2, :cond_84

    goto :goto_77

    :cond_84
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "font"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ee

    invoke-static {p0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    sget-object v6, Lb/b/a/b;->FontFamilyFont:[I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    sget v6, Lb/b/a/b;->FontFamilyFont_fontWeight:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_a5

    sget v6, Lb/b/a/b;->FontFamilyFont_fontWeight:I

    goto :goto_a7

    :cond_a5
    sget v6, Lb/b/a/b;->FontFamilyFont_android_fontWeight:I

    :goto_a7
    const/16 v7, 0x190

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    sget v7, Lb/b/a/b;->FontFamilyFont_fontStyle:I

    invoke-virtual {v5, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_b8

    sget v7, Lb/b/a/b;->FontFamilyFont_fontStyle:I

    goto :goto_ba

    :cond_b8
    sget v7, Lb/b/a/b;->FontFamilyFont_android_fontStyle:I

    :goto_ba
    invoke-virtual {v5, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    if-ne v1, v7, :cond_c2

    const/4 v7, 0x1

    goto :goto_c3

    :cond_c2
    const/4 v7, 0x0

    :goto_c3
    sget v9, Lb/b/a/b;->FontFamilyFont_font:I

    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_ce

    sget v9, Lb/b/a/b;->FontFamilyFont_font:I

    goto :goto_d0

    :cond_ce
    sget v9, Lb/b/a/b;->FontFamilyFont_android_font:I

    :goto_d0
    invoke-virtual {v5, v9, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    :goto_db
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-eq v5, v0, :cond_e5

    invoke-static {p0}, Landroid/support/v4/content/e/a;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_db

    :cond_e5
    new-instance v5, Landroid/support/v4/content/e/a$c;

    invoke-direct {v5, v9, v6, v7, v10}, Landroid/support/v4/content/e/a$c;-><init>(Ljava/lang/String;IZI)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_77

    :cond_ee
    invoke-static {p0}, Landroid/support/v4/content/e/a;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_77

    :cond_f2
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_f9

    goto :goto_10e

    :cond_f9
    new-instance v3, Landroid/support/v4/content/e/a$b;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Landroid/support/v4/content/e/a$c;

    invoke-interface {v4, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/support/v4/content/e/a$c;

    invoke-direct {v3, p0}, Landroid/support/v4/content/e/a$b;-><init>([Landroid/support/v4/content/e/a$c;)V

    goto :goto_10e

    :cond_10b
    invoke-static {p0}, Landroid/support/v4/content/e/a;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_10e
    return-object v3

    :cond_10f
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "No start tag found"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    goto :goto_118

    :goto_117
    throw p0

    :goto_118
    goto :goto_117
.end method

.method public static a(Landroid/content/res/Resources;I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "I)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "[B>;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_45

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-lez v2, :cond_42

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_1b

    const/4 v3, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v3, 0x0

    :goto_1c
    if-eqz v3, :cond_37

    const/4 p1, 0x0

    :goto_1f
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge p1, v3, :cond_42

    invoke-virtual {v1, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/content/e/a;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1f

    :cond_37
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/content/e/a;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_42
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_45
    if-eqz v0, :cond_48

    goto :goto_4c

    :cond_48
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_4c
    return-object v0
.end method

.method private static a([Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v1, :cond_16

    aget-object v4, p0, v3

    invoke-static {v4, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_16
    return-object v0
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 4

    const/4 v0, 0x1

    :goto_1
    if-lez v0, :cond_14

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_11

    const/4 v2, 0x3

    if-eq v1, v2, :cond_e

    goto :goto_1

    :cond_e
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_14
    return-void
.end method
