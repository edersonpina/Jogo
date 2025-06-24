.class public La/a/g;
.super Ljava/lang/Object;
.source "LicenseUtils.java"


# direct methods
.method public static a(I)F
    .registers 2

    const v0, -0x1000001

    and-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F
    .registers 5

    invoke-static {p1, p2}, La/a/g;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    return p4

    :cond_7
    invoke-virtual {p0, p3, p4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p0

    return p0
.end method

.method public static a(II)I
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_b

    invoke-static {p0, p1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p0

    return p0

    :cond_b
    const p1, -0x800001

    and-int/2addr p0, p1

    return p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)I
    .registers 7

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_14

    goto :goto_4c

    :cond_14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v0, v4, :cond_1f

    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    :goto_20
    const/4 v0, 0x0

    if-nez p1, :cond_25

    :cond_23
    const/4 v3, 0x0

    goto :goto_4c

    :cond_25
    if-nez v2, :cond_37

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4c

    array-length v2, v1

    if-gtz v2, :cond_35

    goto :goto_4c

    :cond_35
    aget-object v2, v1, v0

    :cond_37
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_48

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    invoke-virtual {p0, p1, v2}, Landroid/app/AppOpsManager;->noteProxyOp(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    goto :goto_49

    :cond_48
    const/4 p0, 0x1

    :goto_49
    if-eqz p0, :cond_23

    const/4 v3, -0x2

    :cond_4c
    :goto_4c
    return v3
.end method

.method public static a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I
    .registers 5

    invoke-static {p1, p2}, La/a/g;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    return p4

    :cond_7
    invoke-virtual {p0, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/app/Activity;)Landroid/content/Intent;
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0}, Landroid/app/Activity;->getParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    :cond_9
    :try_start_9
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {p0, v0}, La/a/g;->b(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_11} :catch_4b

    const/4 v1, 0x0

    if-nez v0, :cond_15

    return-object v1

    :cond_15
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :try_start_1a
    invoke-static {p0, v2}, La/a/g;->b(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_25

    invoke-static {v2}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    goto :goto_2e

    :cond_25
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0
    :try_end_2e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1a .. :try_end_2e} :catch_2f

    :goto_2e
    return-object p0

    :catch_2f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getParentActivityIntent: bad parentActivityName \'"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' in manifest"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NavUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catch_4b
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static a(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;
    .registers 4

    invoke-static {p0, p1}, La/a/g;->b(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v1}, La/a/g;->b(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1c

    invoke-static {v1}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    goto :goto_25

    :cond_1c
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    :goto_25
    return-object p0
.end method

.method public static a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .registers 4

    if-nez p1, :cond_7

    invoke-virtual {p0, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 p0, 0x0

    invoke-virtual {p1, p2, p3, p0, p0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    invoke-static {p1, p2}, La/a/g;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    invoke-virtual {p0, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .registers 4

    if-nez p0, :cond_8

    const-string p0, "null"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3f

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_2c

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_2c
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3f
    return-void
.end method

.method public static a(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    const-string v2, "android.media.browse.extra.PAGE_SIZE"

    const-string v3, "android.media.browse.extra.PAGE"

    const/4 v4, -0x1

    if-nez p0, :cond_1b

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v4, :cond_19

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v4, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return v0

    :cond_1b
    if-nez p1, :cond_2c

    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v4, :cond_2a

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v4, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    return v0

    :cond_2c
    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v5, v3, :cond_41

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p0, p1, :cond_41

    goto :goto_42

    :cond_41
    const/4 v0, 0x0

    :goto_42
    return v0
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "H11"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    :cond_a
    const-string v0, "H10"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    :cond_13
    const-string v0, "F10"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    return v1

    :cond_1c
    const-string v0, "G10"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    return v1

    :cond_25
    const-string v0, "I10"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    return v1

    :cond_2e
    const-string v0, "H9"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_37

    return v1

    :cond_37
    const-string v0, "I9"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_40

    return v1

    :cond_40
    const-string v0, "G9"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_49

    return v1

    :cond_49
    const-string v0, "F9"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    return v1

    :cond_52
    const-string v0, "I8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5b

    return v1

    :cond_5b
    const-string v0, "H8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_64

    return v1

    :cond_64
    const-string v0, "G8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6d

    return v1

    :cond_6d
    const-string v0, "NG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_76

    return v1

    :cond_76
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    .registers 3

    const-string v0, "http://schemas.android.com/apk/res/android"

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I
    .registers 5

    invoke-static {p1, p2}, La/a/g;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    return p4

    :cond_7
    invoke-virtual {p0, p3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/util/TypedValue;
    .registers 4

    invoke-static {p1, p2}, La/a/g;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    invoke-virtual {p0, p3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p0

    return-object p0
.end method

.method public static b(I)Ljava/lang/String;
    .registers 3

    if-ltz p0, :cond_1c8

    const/16 v0, 0xff

    if-gt p0, v0, :cond_1bc

    const/16 v0, 0x70

    if-eq p0, v0, :cond_1b9

    packed-switch p0, :pswitch_data_1d4

    packed-switch p0, :pswitch_data_2b6

    packed-switch p0, :pswitch_data_2c4

    packed-switch p0, :pswitch_data_2dc

    const/4 p0, 0x0

    return-object p0

    :pswitch_18  #0x6e
    const-string p0, "Button Mode"

    return-object p0

    :pswitch_1b  #0x6d
    const-string p0, "Select"

    return-object p0

    :pswitch_1e  #0x6c
    const-string p0, "Start"

    return-object p0

    :pswitch_21  #0x6b
    const-string p0, "Right Thumb"

    return-object p0

    :pswitch_24  #0x6a
    const-string p0, "Left Thumb"

    return-object p0

    :pswitch_27  #0x69
    const-string p0, "R2 Button"

    return-object p0

    :pswitch_2a  #0x68
    const-string p0, "L2 Button"

    return-object p0

    :pswitch_2d  #0x67
    const-string p0, "R1 Button"

    return-object p0

    :pswitch_30  #0x66
    const-string p0, "L1 Button"

    return-object p0

    :pswitch_33  #0x65
    const-string p0, "Z Button"

    return-object p0

    :pswitch_36  #0x64
    const-string p0, "Y Button"

    return-object p0

    :pswitch_39  #0x63
    const-string p0, "X Button"

    return-object p0

    :pswitch_3c  #0x62
    const-string p0, "C Button"

    return-object p0

    :pswitch_3f  #0x61
    const-string p0, "B Button"

    return-object p0

    :pswitch_42  #0x60
    const-string p0, "A Button"

    return-object p0

    :pswitch_45  #0x5f
    const-string p0, "SWITCH_CHARSET"

    return-object p0

    :pswitch_48  #0x5e
    const-string p0, "PICTSYMBOLS"

    return-object p0

    :pswitch_4b  #0x5d
    const-string p0, "Page Down"

    return-object p0

    :pswitch_4e  #0x5c
    const-string p0, "Page Up"

    return-object p0

    :pswitch_51  #0x5b
    const-string p0, "Mute"

    return-object p0

    :pswitch_54  #0x5a
    const-string p0, "Fast Forward"

    return-object p0

    :pswitch_57  #0x59
    const-string p0, "Rewind"

    return-object p0

    :pswitch_5a  #0x58
    const-string p0, "Prev Media"

    return-object p0

    :pswitch_5d  #0x57
    const-string p0, "Next Media"

    return-object p0

    :pswitch_60  #0x56
    const-string p0, "Stop Media"

    return-object p0

    :pswitch_63  #0x55
    const-string p0, "Play/Pause"

    return-object p0

    :pswitch_66  #0x54
    const-string p0, "Search"

    return-object p0

    :pswitch_69  #0x53
    const-string p0, "Notification"

    return-object p0

    :pswitch_6c  #0x52
    const-string p0, "Menu"

    return-object p0

    :pswitch_6f  #0x51
    const-string p0, "Plus"

    return-object p0

    :pswitch_72  #0x50
    const-string p0, "Focus"

    return-object p0

    :pswitch_75  #0x4f
    const-string p0, "Headset Hook"

    return-object p0

    :pswitch_78  #0x4e
    const-string p0, "Num"

    return-object p0

    :pswitch_7b  #0x4d
    const-string p0, "@"

    return-object p0

    :pswitch_7e  #0x4c
    const-string p0, "/"

    return-object p0

    :pswitch_81  #0x4b
    const-string p0, "\'"

    return-object p0

    :pswitch_84  #0x4a
    const-string p0, ";"

    return-object p0

    :pswitch_87  #0x49
    const-string p0, "\\"

    return-object p0

    :pswitch_8a  #0x48
    const-string p0, "]"

    return-object p0

    :pswitch_8d  #0x47
    const-string p0, "["

    return-object p0

    :pswitch_90  #0x46
    const-string p0, "="

    return-object p0

    :pswitch_93  #0x45
    const-string p0, "-"

    return-object p0

    :pswitch_96  #0x44
    const-string p0, "`"

    return-object p0

    :pswitch_99  #0x43
    const-string p0, "Delete"

    return-object p0

    :pswitch_9c  #0x42
    const-string p0, "Enter"

    return-object p0

    :pswitch_9f  #0x41
    const-string p0, "Envelope"

    return-object p0

    :pswitch_a2  #0x40
    const-string p0, "Explorer"

    return-object p0

    :pswitch_a5  #0x3f
    const-string p0, "SYM"

    return-object p0

    :pswitch_a8  #0x3e
    const-string p0, "Space"

    return-object p0

    :pswitch_ab  #0x3d
    const-string p0, "Tab"

    return-object p0

    :pswitch_ae  #0x3c
    const-string p0, "R-Shift"

    return-object p0

    :pswitch_b1  #0x3b
    const-string p0, "L-Shift"

    return-object p0

    :pswitch_b4  #0x3a
    const-string p0, "R-Alt"

    return-object p0

    :pswitch_b7  #0x39
    const-string p0, "L-Alt"

    return-object p0

    :pswitch_ba  #0x38
    const-string p0, "."

    return-object p0

    :pswitch_bd  #0x37
    const-string p0, ","

    return-object p0

    :pswitch_c0  #0x36
    const-string p0, "Z"

    return-object p0

    :pswitch_c3  #0x35
    const-string p0, "Y"

    return-object p0

    :pswitch_c6  #0x34
    const-string p0, "X"

    return-object p0

    :pswitch_c9  #0x33
    const-string p0, "W"

    return-object p0

    :pswitch_cc  #0x32
    const-string p0, "V"

    return-object p0

    :pswitch_cf  #0x31
    const-string p0, "U"

    return-object p0

    :pswitch_d2  #0x30
    const-string p0, "T"

    return-object p0

    :pswitch_d5  #0x2f
    const-string p0, "S"

    return-object p0

    :pswitch_d8  #0x2e
    const-string p0, "R"

    return-object p0

    :pswitch_db  #0x2d
    const-string p0, "Q"

    return-object p0

    :pswitch_de  #0x2c
    const-string p0, "P"

    return-object p0

    :pswitch_e1  #0x2b
    const-string p0, "O"

    return-object p0

    :pswitch_e4  #0x2a
    const-string p0, "N"

    return-object p0

    :pswitch_e7  #0x29
    const-string p0, "M"

    return-object p0

    :pswitch_ea  #0x28
    const-string p0, "L"

    return-object p0

    :pswitch_ed  #0x27
    const-string p0, "K"

    return-object p0

    :pswitch_f0  #0x26
    const-string p0, "J"

    return-object p0

    :pswitch_f3  #0x25
    const-string p0, "I"

    return-object p0

    :pswitch_f6  #0x24
    const-string p0, "H"

    return-object p0

    :pswitch_f9  #0x23
    const-string p0, "G"

    return-object p0

    :pswitch_fc  #0x22
    const-string p0, "F"

    return-object p0

    :pswitch_ff  #0x21
    const-string p0, "E"

    return-object p0

    :pswitch_102  #0x20
    const-string p0, "D"

    return-object p0

    :pswitch_105  #0x1f
    const-string p0, "C"

    return-object p0

    :pswitch_108  #0x1e
    const-string p0, "B"

    return-object p0

    :pswitch_10b  #0x1d
    const-string p0, "A"

    return-object p0

    :pswitch_10e  #0x1c
    const-string p0, "Clear"

    return-object p0

    :pswitch_111  #0x1b
    const-string p0, "Camera"

    return-object p0

    :pswitch_114  #0x1a
    const-string p0, "Power"

    return-object p0

    :pswitch_117  #0x19
    const-string p0, "Volume Down"

    return-object p0

    :pswitch_11a  #0x18
    const-string p0, "Volume Up"

    return-object p0

    :pswitch_11d  #0x17
    const-string p0, "Center"

    return-object p0

    :pswitch_120  #0x16
    const-string p0, "Right"

    return-object p0

    :pswitch_123  #0x15
    const-string p0, "Left"

    return-object p0

    :pswitch_126  #0x14
    const-string p0, "Down"

    return-object p0

    :pswitch_129  #0x13
    const-string p0, "Up"

    return-object p0

    :pswitch_12c  #0x12
    const-string p0, "#"

    return-object p0

    :pswitch_12f  #0x11
    const-string p0, "*"

    return-object p0

    :pswitch_132  #0x10
    const-string p0, "9"

    return-object p0

    :pswitch_135  #0xf
    const-string p0, "8"

    return-object p0

    :pswitch_138  #0xe
    const-string p0, "7"

    return-object p0

    :pswitch_13b  #0xd
    const-string p0, "6"

    return-object p0

    :pswitch_13e  #0xc
    const-string p0, "5"

    return-object p0

    :pswitch_141  #0xb
    const-string p0, "4"

    return-object p0

    :pswitch_144  #0xa
    const-string p0, "3"

    return-object p0

    :pswitch_147  #0x9
    const-string p0, "2"

    return-object p0

    :pswitch_14a  #0x8
    const-string p0, "1"

    return-object p0

    :pswitch_14d  #0x7
    const-string p0, "0"

    return-object p0

    :pswitch_150  #0x6
    const-string p0, "End Call"

    return-object p0

    :pswitch_153  #0x5
    const-string p0, "Call"

    return-object p0

    :pswitch_156  #0x4
    const-string p0, "Back"

    return-object p0

    :pswitch_159  #0x3
    const-string p0, "Home"

    return-object p0

    :pswitch_15c  #0x2
    const-string p0, "Soft Right"

    return-object p0

    :pswitch_15f  #0x1
    const-string p0, "Soft Left"

    return-object p0

    :pswitch_162  #0x0
    const-string p0, "Unknown"

    return-object p0

    :pswitch_165  #0x85
    const-string p0, "Insert"

    return-object p0

    :pswitch_168  #0x84
    const-string p0, "End"

    return-object p0

    :pswitch_16b  #0x83
    const-string p0, "Escape"

    return-object p0

    :pswitch_16e  #0x82
    const-string p0, "R-Ctrl"

    return-object p0

    :pswitch_171  #0x81
    const-string p0, "L-Ctrl"

    return-object p0

    :pswitch_174  #0x99
    const-string p0, "Numpad 9"

    return-object p0

    :pswitch_177  #0x98
    const-string p0, "Numpad 8"

    return-object p0

    :pswitch_17a  #0x97
    const-string p0, "Numpad 7"

    return-object p0

    :pswitch_17d  #0x96
    const-string p0, "Numpad 6"

    return-object p0

    :pswitch_180  #0x95
    const-string p0, "Numpad 5"

    return-object p0

    :pswitch_183  #0x94
    const-string p0, "Numpad 4"

    return-object p0

    :pswitch_186  #0x93
    const-string p0, "Numpad 3"

    return-object p0

    :pswitch_189  #0x92
    const-string p0, "Numpad 2"

    return-object p0

    :pswitch_18c  #0x91
    const-string p0, "Numpad 1"

    return-object p0

    :pswitch_18f  #0x90
    const-string p0, "Numpad 0"

    return-object p0

    :pswitch_192  #0xff
    const-string p0, "F12"

    return-object p0

    :pswitch_195  #0xfe
    const-string p0, "F11"

    return-object p0

    :pswitch_198  #0xfd
    const-string p0, "F10"

    return-object p0

    :pswitch_19b  #0xfc
    const-string p0, "F9"

    return-object p0

    :pswitch_19e  #0xfb
    const-string p0, "F8"

    return-object p0

    :pswitch_1a1  #0xfa
    const-string p0, "F7"

    return-object p0

    :pswitch_1a4  #0xf9
    const-string p0, "F6"

    return-object p0

    :pswitch_1a7  #0xf8
    const-string p0, "F5"

    return-object p0

    :pswitch_1aa  #0xf7
    const-string p0, "F4"

    return-object p0

    :pswitch_1ad  #0xf6
    const-string p0, "F3"

    return-object p0

    :pswitch_1b0  #0xf5
    const-string p0, "F2"

    return-object p0

    :pswitch_1b3  #0xf4
    const-string p0, "F1"

    return-object p0

    :pswitch_1b6  #0xf3
    const-string p0, ":"

    return-object p0

    :cond_1b9
    const-string p0, "Forward Delete"

    return-object p0

    :cond_1bc
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keycode cannot be greater than 255, keycode: "

    invoke-static {v1, p0}, Ld/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keycode cannot be negative, keycode: "

    invoke-static {v1, p0}, Ld/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_1d4
    .packed-switch 0x0
        :pswitch_162  #00000000
        :pswitch_15f  #00000001
        :pswitch_15c  #00000002
        :pswitch_159  #00000003
        :pswitch_156  #00000004
        :pswitch_153  #00000005
        :pswitch_150  #00000006
        :pswitch_14d  #00000007
        :pswitch_14a  #00000008
        :pswitch_147  #00000009
        :pswitch_144  #0000000a
        :pswitch_141  #0000000b
        :pswitch_13e  #0000000c
        :pswitch_13b  #0000000d
        :pswitch_138  #0000000e
        :pswitch_135  #0000000f
        :pswitch_132  #00000010
        :pswitch_12f  #00000011
        :pswitch_12c  #00000012
        :pswitch_129  #00000013
        :pswitch_126  #00000014
        :pswitch_123  #00000015
        :pswitch_120  #00000016
        :pswitch_11d  #00000017
        :pswitch_11a  #00000018
        :pswitch_117  #00000019
        :pswitch_114  #0000001a
        :pswitch_111  #0000001b
        :pswitch_10e  #0000001c
        :pswitch_10b  #0000001d
        :pswitch_108  #0000001e
        :pswitch_105  #0000001f
        :pswitch_102  #00000020
        :pswitch_ff  #00000021
        :pswitch_fc  #00000022
        :pswitch_f9  #00000023
        :pswitch_f6  #00000024
        :pswitch_f3  #00000025
        :pswitch_f0  #00000026
        :pswitch_ed  #00000027
        :pswitch_ea  #00000028
        :pswitch_e7  #00000029
        :pswitch_e4  #0000002a
        :pswitch_e1  #0000002b
        :pswitch_de  #0000002c
        :pswitch_db  #0000002d
        :pswitch_d8  #0000002e
        :pswitch_d5  #0000002f
        :pswitch_d2  #00000030
        :pswitch_cf  #00000031
        :pswitch_cc  #00000032
        :pswitch_c9  #00000033
        :pswitch_c6  #00000034
        :pswitch_c3  #00000035
        :pswitch_c0  #00000036
        :pswitch_bd  #00000037
        :pswitch_ba  #00000038
        :pswitch_b7  #00000039
        :pswitch_b4  #0000003a
        :pswitch_b1  #0000003b
        :pswitch_ae  #0000003c
        :pswitch_ab  #0000003d
        :pswitch_a8  #0000003e
        :pswitch_a5  #0000003f
        :pswitch_a2  #00000040
        :pswitch_9f  #00000041
        :pswitch_9c  #00000042
        :pswitch_99  #00000043
        :pswitch_96  #00000044
        :pswitch_93  #00000045
        :pswitch_90  #00000046
        :pswitch_8d  #00000047
        :pswitch_8a  #00000048
        :pswitch_87  #00000049
        :pswitch_84  #0000004a
        :pswitch_81  #0000004b
        :pswitch_7e  #0000004c
        :pswitch_7b  #0000004d
        :pswitch_78  #0000004e
        :pswitch_75  #0000004f
        :pswitch_72  #00000050
        :pswitch_6f  #00000051
        :pswitch_6c  #00000052
        :pswitch_69  #00000053
        :pswitch_66  #00000054
        :pswitch_63  #00000055
        :pswitch_60  #00000056
        :pswitch_5d  #00000057
        :pswitch_5a  #00000058
        :pswitch_57  #00000059
        :pswitch_54  #0000005a
        :pswitch_51  #0000005b
        :pswitch_4e  #0000005c
        :pswitch_4b  #0000005d
        :pswitch_48  #0000005e
        :pswitch_45  #0000005f
        :pswitch_42  #00000060
        :pswitch_3f  #00000061
        :pswitch_3c  #00000062
        :pswitch_39  #00000063
        :pswitch_36  #00000064
        :pswitch_33  #00000065
        :pswitch_30  #00000066
        :pswitch_2d  #00000067
        :pswitch_2a  #00000068
        :pswitch_27  #00000069
        :pswitch_24  #0000006a
        :pswitch_21  #0000006b
        :pswitch_1e  #0000006c
        :pswitch_1b  #0000006d
        :pswitch_18  #0000006e
    .end packed-switch

    :pswitch_data_2b6
    .packed-switch 0x81
        :pswitch_171  #00000081
        :pswitch_16e  #00000082
        :pswitch_16b  #00000083
        :pswitch_168  #00000084
        :pswitch_165  #00000085
    .end packed-switch

    :pswitch_data_2c4
    .packed-switch 0x90
        :pswitch_18f  #00000090
        :pswitch_18c  #00000091
        :pswitch_189  #00000092
        :pswitch_186  #00000093
        :pswitch_183  #00000094
        :pswitch_180  #00000095
        :pswitch_17d  #00000096
        :pswitch_17a  #00000097
        :pswitch_177  #00000098
        :pswitch_174  #00000099
    .end packed-switch

    :pswitch_data_2dc
    .packed-switch 0xf3
        :pswitch_1b6  #000000f3
        :pswitch_1b3  #000000f4
        :pswitch_1b0  #000000f5
        :pswitch_1ad  #000000f6
        :pswitch_1aa  #000000f7
        :pswitch_1a7  #000000f8
        :pswitch_1a4  #000000f9
        :pswitch_1a1  #000000fa
        :pswitch_19e  #000000fb
        :pswitch_19b  #000000fc
        :pswitch_198  #000000fd
        :pswitch_195  #000000fe
        :pswitch_192  #000000ff
    .end packed-switch
.end method

.method public static b(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    if-eqz v0, :cond_11

    return-object v0

    :cond_11
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-nez v0, :cond_17

    return-object v1

    :cond_17
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "android.support.PARENT_ACTIVITY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_22

    return-object v1

    :cond_22
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_3e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3e
    return-object p1
.end method

.method public static c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I
    .registers 5

    invoke-static {p1, p2}, La/a/g;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    return p4

    :cond_7
    invoke-virtual {p0, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p0

    return p0
.end method
