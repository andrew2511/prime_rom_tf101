.class public Lcom/android/contacts/util/ContactBadgeUtil;
.super Ljava/lang/Object;
.source "ContactBadgeUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSocialDate(Lcom/android/contacts/ContactLoader$Result;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 7
    .parameter "contactData"
    .parameter "context"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/contacts/ContactLoader$Result;->getSocialSnippet()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const/4 p0, 0x0

    .line 107
    .end local p0
    :goto_0
    return-object p0

    .line 50
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/ContactLoader$Result;->getStatusTimestamp()Ljava/lang/Long;

    move-result-object v0

    .line 51
    .local v0, statusTimestamp:Ljava/lang/Long;
    if-eqz v0, :cond_1

    .line 54
    const/high16 v6, 0x4

    .line 56
    .local v6, flags:I
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .end local v0           #statusTimestamp:Ljava/lang/Long;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, timestampDisplayValue:Ljava/lang/CharSequence;
    move-object v3, v0

    .line 64
    .end local v0           #timestampDisplayValue:Ljava/lang/CharSequence;
    .end local v6           #flags:I
    .local v3, timestampDisplayValue:Ljava/lang/CharSequence;
    :goto_1
    const/4 v0, 0x0

    .line 66
    .local v0, labelDisplayValue:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/ContactLoader$Result;->getStatusLabel()Ljava/lang/Integer;

    move-result-object v1

    .line 67
    .local v1, statusLabel:Ljava/lang/Integer;
    invoke-virtual {p0}, Lcom/android/contacts/ContactLoader$Result;->getStatusResPackage()Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, statusResPackage:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 70
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    .end local p0
    if-eqz p0, :cond_2

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 83
    .local p0, resources:Landroid/content/res/Resources;
    :goto_2
    if-eqz p0, :cond_3

    .line 85
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p0

    .line 94
    .end local v0           #labelDisplayValue:Ljava/lang/String;
    .end local v1           #statusLabel:Ljava/lang/Integer;
    .end local v2           #statusResPackage:Ljava/lang/String;
    .local p0, labelDisplayValue:Ljava/lang/String;
    :goto_3
    if-eqz v3, :cond_4

    if-eqz p0, :cond_4

    .line 95
    const v0, 0x7f0c0179

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .local p0, attribution:Ljava/lang/CharSequence;
    goto :goto_0

    .line 60
    .end local v3           #timestampDisplayValue:Ljava/lang/CharSequence;
    .local v0, statusTimestamp:Ljava/lang/Long;
    .local p0, contactData:Lcom/android/contacts/ContactLoader$Result;
    :cond_1
    const/4 v0, 0x0

    .local v0, timestampDisplayValue:Ljava/lang/CharSequence;
    move-object v3, v0

    .end local v0           #timestampDisplayValue:Ljava/lang/CharSequence;
    .restart local v3       #timestampDisplayValue:Ljava/lang/CharSequence;
    goto :goto_1

    .line 73
    .end local p0           #contactData:Lcom/android/contacts/ContactLoader$Result;
    .local v0, labelDisplayValue:Ljava/lang/String;
    .restart local v1       #statusLabel:Ljava/lang/Integer;
    .restart local v2       #statusResPackage:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 75
    .local p0, pm:Landroid/content/pm/PackageManager;
    :try_start_1
    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p0

    .local p0, resources:Landroid/content/res/Resources;
    goto :goto_2

    .line 76
    .local p0, pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception p0

    .line 77
    .local p0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string p0, "ContactBadgeUtil"

    .end local p0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Contact status update resource package not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/4 p0, 0x0

    .local p0, resources:Landroid/content/res/Resources;
    goto :goto_2

    .line 86
    :catch_1
    move-exception p0

    .line 87
    .local p0, e:Landroid/content/res/Resources$NotFoundException;
    const-string p0, "ContactBadgeUtil"

    .end local p0           #e:Landroid/content/res/Resources$NotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Contact status update resource not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .end local v2           #statusResPackage:Ljava/lang/String;
    const-string v4, "@"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .end local v1           #statusLabel:Ljava/lang/Integer;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object p0, v0

    .end local v0           #labelDisplayValue:Ljava/lang/String;
    .local p0, labelDisplayValue:Ljava/lang/String;
    goto :goto_3

    .line 98
    :cond_4
    if-nez v3, :cond_5

    if-eqz p0, :cond_5

    .line 99
    const v0, 0x7f0c0178

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .local p0, attribution:Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 102
    .local p0, labelDisplayValue:Ljava/lang/String;
    :cond_5
    if-eqz v3, :cond_6

    .line 103
    move-object p0, v3

    .local p0, attribution:Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 105
    .local p0, labelDisplayValue:Ljava/lang/String;
    :cond_6
    const/4 p0, 0x0

    .local p0, attribution:Ljava/lang/CharSequence;
    goto/16 :goto_0
.end method

.method public static loadPlaceholderPhoto(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "context"

    .prologue
    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02005b

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
