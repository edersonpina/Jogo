.class Landroid/support/v7/app/y;
.super Ljava/lang/Object;
.source "AppCompatViewInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/y$a;
    }
.end annotation


# static fields
.field private static final b:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final c:[I

.field private static final d:[Ljava/lang/String;

.field private static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Landroid/util/AttributeSet;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sput-object v1, Landroid/support/v7/app/y;->b:[Ljava/lang/Class;

    new-array v1, v4, [I

    const v2, 0x101026f

    aput v2, v1, v3

    sput-object v1, Landroid/support/v7/app/y;->c:[I

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "android.widget."

    aput-object v2, v1, v3

    const-string v2, "android.view."

    aput-object v2, v1, v4

    const-string v2, "android.webkit."

    aput-object v2, v1, v0

    sput-object v1, Landroid/support/v7/app/y;->d:[Ljava/lang/String;

    new-instance v0, Lb/b/c/d/a;

    invoke-direct {v0}, Lb/b/c/d/a;-><init>()V

    sput-object v0, Landroid/support/v7/app/y;->e:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v7/app/y;->a:[Ljava/lang/Object;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .registers 5

    sget-object v0, Landroid/support/v7/app/y;->e:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_36

    :try_start_a
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    if-eqz p3, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_21

    :cond_20
    move-object p3, p2

    :goto_21
    invoke-virtual {p1, p3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-class p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    sget-object p3, Landroid/support/v7/app/y;->b:[Ljava/lang/Class;

    invoke-virtual {p1, p3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sget-object p1, Landroid/support/v7/app/y;->e:Ljava/util/Map;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_36
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    iget-object p1, p0, Landroid/support/v7/app/y;->a:[Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_42} :catch_43

    return-object p1

    :catch_43
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZZ)Landroid/view/View;
    .registers 11

    if-eqz p5, :cond_9

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_a

    :cond_9
    move-object p1, p3

    :goto_a
    const/4 p5, 0x0

    if-nez p6, :cond_f

    if-eqz p7, :cond_4a

    :cond_f
    sget-object v0, Lb/b/d/a/j;->View:[I

    invoke-virtual {p1, p4, v0, p5, p5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    if-eqz p6, :cond_1e

    sget p6, Lb/b/d/a/j;->View_android_theme:I

    invoke-virtual {v0, p6, p5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p6

    goto :goto_1f

    :cond_1e
    const/4 p6, 0x0

    :goto_1f
    if-eqz p7, :cond_32

    if-nez p6, :cond_32

    sget p6, Lb/b/d/a/j;->View_theme:I

    invoke-virtual {v0, p6, p5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p6

    if-eqz p6, :cond_32

    const-string p7, "AppCompatViewInflater"

    const-string v1, "app:theme is now deprecated. Please move to using android:theme instead."

    invoke-static {p7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p6, :cond_4a

    instance-of p7, p1, Lb/b/d/d/d;

    if-eqz p7, :cond_44

    move-object p7, p1

    check-cast p7, Lb/b/d/d/d;

    invoke-virtual {p7}, Lb/b/d/d/d;->a()I

    move-result p7

    if-eq p7, p6, :cond_4a

    :cond_44
    new-instance p7, Lb/b/d/d/d;

    invoke-direct {p7, p1, p6}, Lb/b/d/d/d;-><init>(Landroid/content/Context;I)V

    move-object p1, p7

    :cond_4a
    if-eqz p8, :cond_50

    invoke-static {p1}, Landroid/support/v7/widget/v0;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    :cond_50
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p6

    const/4 p7, -0x1

    const/4 p8, 0x1

    sparse-switch p6, :sswitch_data_1c6

    goto/16 :goto_e5

    :sswitch_5b
    const-string p6, "Button"

    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_e5

    const/4 p6, 0x2

    goto/16 :goto_e6

    :sswitch_66
    const-string p6, "EditText"

    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_e5

    const/4 p6, 0x3

    goto/16 :goto_e6

    :sswitch_71
    const-string p6, "CheckBox"

    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_e5

    const/4 p6, 0x6

    goto/16 :goto_e6

    :sswitch_7c
    const-string p6, "AutoCompleteTextView"

    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_e5

    const/16 p6, 0x9

    goto :goto_e6

    :sswitch_87
    const-string p6, "ImageView"

    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_e5

    const/4 p6, 0x1

    goto :goto_e6

    :sswitch_91
    const-string p6, "RadioButton"

    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_e5

    const/4 p6, 0x7

    goto :goto_e6

    :sswitch_9b
    const-string p6, "Spinner"

    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_e5

    const/4 p6, 0x4

    goto :goto_e6

    :sswitch_a5
    const-string p6, "SeekBar"

    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_e5

    const/16 p6, 0xc

    goto :goto_e6

    :sswitch_b0
    const-string p6, "ImageButton"

    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_e5

    const/4 p6, 0x5

    goto :goto_e6

    :sswitch_ba
    const-string p6, "TextView"

    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_e5

    const/4 p6, 0x0

    goto :goto_e6

    :sswitch_c4
    const-string p6, "MultiAutoCompleteTextView"

    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_e5

    const/16 p6, 0xa

    goto :goto_e6

    :sswitch_cf
    const-string p6, "CheckedTextView"

    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_e5

    const/16 p6, 0x8

    goto :goto_e6

    :sswitch_da
    const-string p6, "RatingBar"

    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_e5

    const/16 p6, 0xb

    goto :goto_e6

    :cond_e5
    :goto_e5
    const/4 p6, -0x1

    :goto_e6
    const/4 v0, 0x0

    packed-switch p6, :pswitch_data_1fc

    move-object p6, v0

    goto :goto_13d

    :pswitch_ec  #0xc
    new-instance p6, Landroid/support/v7/widget/u;

    invoke-direct {p6, p1, p4}, Landroid/support/v7/widget/u;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_13d

    :pswitch_f2  #0xb
    new-instance p6, Landroid/support/v7/widget/t;

    invoke-direct {p6, p1, p4}, Landroid/support/v7/widget/t;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_13d

    :pswitch_f8  #0xa
    new-instance p6, Landroid/support/v7/widget/p;

    invoke-direct {p6, p1, p4}, Landroid/support/v7/widget/p;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_13d

    :pswitch_fe  #0x9
    new-instance p6, Landroid/support/v7/widget/d;

    invoke-direct {p6, p1, p4}, Landroid/support/v7/widget/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_13d

    :pswitch_104  #0x8
    new-instance p6, Landroid/support/v7/widget/h;

    invoke-direct {p6, p1, p4}, Landroid/support/v7/widget/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_13d

    :pswitch_10a  #0x7
    new-instance p6, Landroid/support/v7/widget/s;

    invoke-direct {p6, p1, p4}, Landroid/support/v7/widget/s;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_13d

    :pswitch_110  #0x6
    new-instance p6, Landroid/support/v7/widget/g;

    invoke-direct {p6, p1, p4}, Landroid/support/v7/widget/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_13d

    :pswitch_116  #0x5
    new-instance p6, Landroid/support/v7/widget/m;

    sget v1, Lb/b/d/a/a;->imageButtonStyle:I

    invoke-direct {p6, p1, p4, v1}, Landroid/support/v7/widget/m;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto :goto_13d

    :pswitch_11e  #0x4
    new-instance p6, Landroid/support/v7/widget/x;

    sget v1, Lb/b/d/a/a;->spinnerStyle:I

    invoke-direct {p6, p1, p4, v1}, Landroid/support/v7/widget/x;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto :goto_13d

    :pswitch_126  #0x3
    new-instance p6, Landroid/support/v7/widget/k;

    invoke-direct {p6, p1, p4}, Landroid/support/v7/widget/k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_13d

    :pswitch_12c  #0x2
    new-instance p6, Landroid/support/v7/widget/f;

    invoke-direct {p6, p1, p4}, Landroid/support/v7/widget/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_13d

    :pswitch_132  #0x1
    new-instance p6, Landroid/support/v7/widget/o;

    invoke-direct {p6, p1, p4, p5}, Landroid/support/v7/widget/o;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto :goto_13d

    :pswitch_138  #0x0
    new-instance p6, Landroid/support/v7/widget/a0;

    invoke-direct {p6, p1, p4}, Landroid/support/v7/widget/a0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :goto_13d
    if-nez p6, :cond_19b

    if-eq p3, p1, :cond_19b

    const-string p3, "view"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_14f

    const-string p2, "class"

    invoke-interface {p4, v0, p2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_14f
    :try_start_14f
    iget-object p3, p0, Landroid/support/v7/app/y;->a:[Ljava/lang/Object;

    aput-object p1, p3, p5

    iget-object p3, p0, Landroid/support/v7/app/y;->a:[Ljava/lang/Object;

    aput-object p4, p3, p8

    const/16 p3, 0x2e

    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(I)I

    move-result p3

    if-ne p7, p3, :cond_180

    const/4 p3, 0x0

    :goto_160
    sget-object p6, Landroid/support/v7/app/y;->d:[Ljava/lang/String;

    array-length p6, p6

    if-ge p3, p6, :cond_179

    sget-object p6, Landroid/support/v7/app/y;->d:[Ljava/lang/String;

    aget-object p6, p6, p3

    invoke-direct {p0, p1, p2, p6}, Landroid/support/v7/app/y;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object p6
    :try_end_16d
    .catch Ljava/lang/Exception; {:try_start_14f .. :try_end_16d} :catch_194
    .catchall {:try_start_14f .. :try_end_16d} :catchall_18c

    if-eqz p6, :cond_176

    iget-object p1, p0, Landroid/support/v7/app/y;->a:[Ljava/lang/Object;

    aput-object v0, p1, p5

    aput-object v0, p1, p8

    goto :goto_19b

    :cond_176
    add-int/lit8 p3, p3, 0x1

    goto :goto_160

    :cond_179
    iget-object p1, p0, Landroid/support/v7/app/y;->a:[Ljava/lang/Object;

    aput-object v0, p1, p5

    aput-object v0, p1, p8

    goto :goto_19a

    :cond_180
    :try_start_180
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/app/y;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1
    :try_end_184
    .catch Ljava/lang/Exception; {:try_start_180 .. :try_end_184} :catch_194
    .catchall {:try_start_180 .. :try_end_184} :catchall_18c

    iget-object p2, p0, Landroid/support/v7/app/y;->a:[Ljava/lang/Object;

    aput-object v0, p2, p5

    aput-object v0, p2, p8

    move-object p6, p1

    goto :goto_19b

    :catchall_18c
    move-exception p1

    iget-object p2, p0, Landroid/support/v7/app/y;->a:[Ljava/lang/Object;

    aput-object v0, p2, p5

    aput-object v0, p2, p8

    throw p1

    :catch_194
    iget-object p1, p0, Landroid/support/v7/app/y;->a:[Ljava/lang/Object;

    aput-object v0, p1, p5

    aput-object v0, p1, p8

    :goto_19a
    move-object p6, v0

    :cond_19b
    :goto_19b
    if-eqz p6, :cond_1c5

    invoke-virtual {p6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p2, p1, Landroid/content/ContextWrapper;

    if-eqz p2, :cond_1c5

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p6}, Landroid/support/v4/view/n;->h(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_1ae

    goto :goto_1c5

    :cond_1ae
    sget-object p2, Landroid/support/v7/app/y;->c:[I

    invoke-virtual {p1, p4, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1c2

    new-instance p3, Landroid/support/v7/app/y$a;

    invoke-direct {p3, p6, p2}, Landroid/support/v7/app/y$a;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {p6, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1c2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1c5
    :goto_1c5
    return-object p6

    :sswitch_data_1c6
    .sparse-switch
        -0x7404ceea -> :sswitch_da
        -0x56c015e7 -> :sswitch_cf
        -0x503aa7ad -> :sswitch_c4
        -0x37f7066e -> :sswitch_ba
        -0x37e04bb3 -> :sswitch_b0
        -0x274065a5 -> :sswitch_a5
        -0x1440b607 -> :sswitch_9b
        0x2e46a6ed -> :sswitch_91
        0x431b5280 -> :sswitch_87
        0x5445f9ba -> :sswitch_7c
        0x5f7507c3 -> :sswitch_71
        0x63577677 -> :sswitch_66
        0x77471352 -> :sswitch_5b
    .end sparse-switch

    :pswitch_data_1fc
    .packed-switch 0x0
        :pswitch_138  #00000000
        :pswitch_132  #00000001
        :pswitch_12c  #00000002
        :pswitch_126  #00000003
        :pswitch_11e  #00000004
        :pswitch_116  #00000005
        :pswitch_110  #00000006
        :pswitch_10a  #00000007
        :pswitch_104  #00000008
        :pswitch_fe  #00000009
        :pswitch_f8  #0000000a
        :pswitch_f2  #0000000b
        :pswitch_ec  #0000000c
    .end packed-switch
.end method
