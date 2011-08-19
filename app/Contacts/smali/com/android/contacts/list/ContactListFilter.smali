.class public final Lcom/android/contacts/list/ContactListFilter;
.super Ljava/lang/Object;
.source "ContactListFilter.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/contacts/list/ContactListFilter;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/list/ContactListFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public accountName:Ljava/lang/String;

.field public accountType:Ljava/lang/String;

.field public filterType:I

.field public groupId:J

.field public groupReadOnly:Z

.field public groupSourceId:Ljava/lang/String;

.field public icon:Landroid/graphics/drawable/Drawable;

.field private mId:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 212
    new-instance v0, Lcom/android/contacts/list/ContactListFilter$1;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactListFilter$1;-><init>()V

    sput-object v0, Lcom/android/contacts/list/ContactListFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "filterType"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .parameter "accountType"
    .parameter "accountName"
    .parameter "groupId"
    .parameter "groupSourceId"
    .parameter "groupReadOnly"
    .parameter "title"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    .line 74
    iput-object p1, p0, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    .line 76
    iput-wide p3, p0, Lcom/android/contacts/list/ContactListFilter;->groupId:J

    .line 77
    iput-object p5, p0, Lcom/android/contacts/list/ContactListFilter;->groupSourceId:Ljava/lang/String;

    .line 78
    iput-boolean p6, p0, Lcom/android/contacts/list/ContactListFilter;->groupReadOnly:Z

    .line 79
    iput-object p7, p0, Lcom/android/contacts/list/ContactListFilter;->title:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1
    .parameter "accountType"
    .parameter "accountName"
    .parameter "icon"
    .parameter "title"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    .line 65
    iput-object p1, p0, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lcom/android/contacts/list/ContactListFilter;->icon:Landroid/graphics/drawable/Drawable;

    .line 68
    iput-object p4, p0, Lcom/android/contacts/list/ContactListFilter;->title:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public static restoreFromPreferences(Landroid/content/SharedPreferences;)Lcom/android/contacts/list/ContactListFilter;
    .locals 6
    .parameter "prefs"

    .prologue
    const/4 v3, -0x1

    const/4 v5, 0x0

    .line 186
    const-string v2, "filter.type"

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 187
    .local v1, filterType:I
    if-ne v1, v3, :cond_0

    move-object v2, v5

    .line 198
    :goto_0
    return-object v2

    .line 191
    :cond_0
    new-instance v0, Lcom/android/contacts/list/ContactListFilter;

    invoke-direct {v0, v1}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    .line 192
    .local v0, filter:Lcom/android/contacts/list/ContactListFilter;
    const-string v2, "filter.accountName"

    invoke-interface {p0, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    .line 193
    const-string v2, "filter.accountType"

    invoke-interface {p0, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    .line 194
    const-string v2, "filter.groupId"

    const-wide/16 v3, -0x1

    invoke-interface {p0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/contacts/list/ContactListFilter;->groupId:J

    .line 195
    const-string v2, "filter.groupSourceId"

    invoke-interface {p0, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/contacts/list/ContactListFilter;->groupSourceId:Ljava/lang/String;

    .line 196
    const-string v2, "filter.groupReadOnly"

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/contacts/list/ContactListFilter;->groupReadOnly:Z

    .line 197
    const-string v2, "filter.groupTitle"

    const-string v3, "group"

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/contacts/list/ContactListFilter;->title:Ljava/lang/String;

    move-object v2, v0

    .line 198
    goto :goto_0
.end method

.method public static storeToPreferences(Landroid/content/SharedPreferences;Lcom/android/contacts/list/ContactListFilter;)V
    .locals 5
    .parameter "prefs"
    .parameter "filter"

    .prologue
    const/4 v4, 0x0

    .line 174
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "filter.type"

    if-nez p1, :cond_0

    const/4 v2, -0x1

    :goto_0
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "filter.accountName"

    if-nez p1, :cond_1

    move-object v2, v4

    :goto_1
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "filter.accountType"

    if-nez p1, :cond_2

    move-object v2, v4

    :goto_2
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "filter.groupId"

    if-nez p1, :cond_3

    const-wide/16 v2, -0x1

    :goto_3
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "filter.groupSourceId"

    if-nez p1, :cond_4

    move-object v2, v4

    :goto_4
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "filter.groupReadOnly"

    if-nez p1, :cond_5

    const/4 v2, 0x0

    :goto_5
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "filter.groupTitle"

    if-nez p1, :cond_6

    move-object v2, v4

    :goto_6
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 183
    return-void

    .line 174
    :cond_0
    iget v2, p1, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    goto :goto_0

    :cond_1
    iget-object v2, p1, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v2, p1, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget-wide v2, p1, Lcom/android/contacts/list/ContactListFilter;->groupId:J

    goto :goto_3

    :cond_4
    iget-object v2, p1, Lcom/android/contacts/list/ContactListFilter;->groupSourceId:Ljava/lang/String;

    goto :goto_4

    :cond_5
    iget-boolean v2, p1, Lcom/android/contacts/list/ContactListFilter;->groupReadOnly:Z

    goto :goto_5

    :cond_6
    iget-object v2, p1, Lcom/android/contacts/list/ContactListFilter;->title:Ljava/lang/String;

    goto :goto_6
.end method


# virtual methods
.method public compareTo(Lcom/android/contacts/list/ContactListFilter;)I
    .locals 5
    .parameter "another"

    .prologue
    .line 115
    iget-object v3, p0, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 116
    .local v0, res:I
    if-eqz v0, :cond_0

    move v3, v0

    .line 131
    :goto_0
    return v3

    .line 120
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 121
    if-eqz v0, :cond_1

    move v3, v0

    .line 122
    goto :goto_0

    .line 125
    :cond_1
    iget v3, p0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    iget v4, p1, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-eq v3, v4, :cond_2

    .line 126
    iget v3, p0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    iget v4, p1, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    sub-int/2addr v3, v4

    goto :goto_0

    .line 129
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/list/ContactListFilter;->title:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/contacts/list/ContactListFilter;->title:Ljava/lang/String;

    move-object v1, v3

    .line 130
    .local v1, title1:Ljava/lang/String;
    :goto_1
    iget-object v3, p1, Lcom/android/contacts/list/ContactListFilter;->title:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p1, Lcom/android/contacts/list/ContactListFilter;->title:Ljava/lang/String;

    move-object v2, v3

    .line 131
    .local v2, title2:Ljava/lang/String;
    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 129
    .end local v1           #title1:Ljava/lang/String;
    .end local v2           #title2:Ljava/lang/String;
    :cond_3
    const-string v3, ""

    move-object v1, v3

    goto :goto_1

    .line 130
    .restart local v1       #title1:Ljava/lang/String;
    :cond_4
    const-string v3, ""

    move-object v2, v3

    goto :goto_2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    check-cast p1, Lcom/android/contacts/list/ContactListFilter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListFilter;->compareTo(Lcom/android/contacts/list/ContactListFilter;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .parameter "other"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 151
    if-ne p0, p1, :cond_0

    move v2, v7

    .line 170
    :goto_0
    return v2

    .line 155
    :cond_0
    instance-of v2, p1, Lcom/android/contacts/list/ContactListFilter;

    if-nez v2, :cond_1

    move v2, v6

    .line 156
    goto :goto_0

    .line 159
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/list/ContactListFilter;

    move-object v1, v0

    .line 160
    .local v1, otherFilter:Lcom/android/contacts/list/ContactListFilter;
    iget v2, p0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    iget v3, v1, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v2, v6

    .line 163
    goto :goto_0

    .line 166
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilter;->groupSourceId:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/android/contacts/list/ContactListFilter;->groupSourceId:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 167
    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilter;->groupSourceId:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/contacts/list/ContactListFilter;->groupSourceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 170
    :cond_4
    iget-wide v2, p0, Lcom/android/contacts/list/ContactListFilter;->groupId:J

    iget-wide v4, v1, Lcom/android/contacts/list/ContactListFilter;->groupId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    move v2, v7

    goto :goto_0

    :cond_5
    move v2, v6

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x2d

    .line 242
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->mId:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .local v0, sb:Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 245
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 246
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 249
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    const/16 v3, 0x5f

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->groupSourceId:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 252
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilter;->groupSourceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->mId:Ljava/lang/String;

    .line 258
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->mId:Ljava/lang/String;

    return-object v1

    .line 253
    .restart local v0       #sb:Ljava/lang/StringBuilder;
    :cond_4
    iget-wide v1, p0, Lcom/android/contacts/list/ContactListFilter;->groupId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 254
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/contacts/list/ContactListFilter;->groupId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 136
    iget v0, p0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    .line 137
    .local v0, code:I
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 138
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 139
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->groupSourceId:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 142
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilter;->groupSourceId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 146
    :cond_1
    :goto_0
    return v0

    .line 143
    :cond_2
    iget-wide v1, p0, Lcom/android/contacts/list/ContactListFilter;->groupId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 144
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/android/contacts/list/ContactListFilter;->groupId:J

    long-to-int v2, v2

    add-int v0, v1, v2

    goto :goto_0
.end method

.method public isValidationRequired()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 86
    iget v0, p0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-ne v0, v1, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 91
    iget v0, p0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    packed-switch v0, :pswitch_data_0

    .line 110
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 93
    :pswitch_0
    const-string v0, "default"

    goto :goto_0

    .line 95
    :pswitch_1
    const-string v0, "all_accounts"

    goto :goto_0

    .line 97
    :pswitch_2
    const-string v0, "custom"

    goto :goto_0

    .line 99
    :pswitch_3
    const-string v0, "starred"

    goto :goto_0

    .line 101
    :pswitch_4
    const-string v0, "with_phones"

    goto :goto_0

    .line 103
    :pswitch_5
    const-string v0, "single"

    goto :goto_0

    .line 105
    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "account: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 107
    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "group: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/contacts/list/ContactListFilter;->groupId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 204
    iget v0, p0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    iget-wide v0, p0, Lcom/android/contacts/list/ContactListFilter;->groupId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 208
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilter;->groupSourceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 209
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListFilter;->groupReadOnly:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    return-void

    .line 209
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
