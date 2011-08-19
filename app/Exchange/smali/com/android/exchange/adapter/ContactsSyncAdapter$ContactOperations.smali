.class Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;
.super Ljava/util/ArrayList;
.source "ContactsSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/ContactsSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactOperations"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Landroid/content/ContentProviderOperation;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mContactBackValue:I

.field private mContactIndexArray:[I

.field private mContactIndexCount:I

.field private mCount:I

.field private mResults:[Landroid/content/ContentProviderResult;

.field final synthetic this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;


# direct methods
.method private constructor <init>(Lcom/android/exchange/adapter/ContactsSyncAdapter;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 949
    iput-object p1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 951
    iput v1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mCount:I

    .line 952
    iget v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mCount:I

    iput v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mContactBackValue:I

    .line 954
    const-string v0, "4"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mContactIndexArray:[I

    .line 956
    iput v1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mContactIndexCount:I

    .line 957
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mResults:[Landroid/content/ContentProviderResult;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exchange/adapter/ContactsSyncAdapter;Lcom/android/exchange/adapter/ContactsSyncAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 949
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;-><init>(Lcom/android/exchange/adapter/ContactsSyncAdapter;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;)[Landroid/content/ContentProviderResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 949
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mResults:[Landroid/content/ContentProviderResult;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 949
    iget v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mContactIndexCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 949
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mContactIndexArray:[I

    return-object v0
.end method

.method private cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "cv"
    .parameter "column"
    .parameter "oldValue"

    .prologue
    const/4 v1, 0x1

    .line 1171
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1172
    if-eqz p3, :cond_2

    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 1178
    :goto_0
    return v0

    .line 1175
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v1

    .line 1176
    goto :goto_0

    .line 1178
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findTypedData(Ljava/util/ArrayList;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Entity$NamedContentValues;
    .locals 7
    .parameter
    .parameter "contentItemType"
    .parameter "type"
    .parameter "stringType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity$NamedContentValues;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Entity$NamedContentValues;"
        }
    .end annotation

    .prologue
    .line 1016
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    const/4 v4, 0x0

    .line 1019
    .local v4, result:Landroid/content/Entity$NamedContentValues;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Entity$NamedContentValues;

    .line 1020
    .local v3, namedContentValues:Landroid/content/Entity$NamedContentValues;
    iget-object v5, v3, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    .line 1021
    .local v5, uri:Landroid/net/Uri;
    iget-object v0, v3, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 1022
    .local v0, cv:Landroid/content/ContentValues;
    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1023
    const-string v6, "mimetype"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1024
    .local v2, mimeType:Ljava/lang/String;
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1025
    if-eqz p4, :cond_1

    .line 1026
    const-string v6, "data1"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1027
    move-object v4, v3

    goto :goto_0

    .line 1033
    :cond_1
    if-ltz p3, :cond_2

    const-string v6, "data2"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "data2"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, p3, :cond_0

    .line 1035
    :cond_2
    move-object v4, v3

    goto :goto_0

    .line 1043
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v2           #mimeType:Ljava/lang/String;
    .end local v3           #namedContentValues:Landroid/content/Entity$NamedContentValues;
    .end local v5           #uri:Landroid/net/Uri;
    :cond_3
    if-eqz v4, :cond_4

    .line 1044
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1048
    :cond_4
    return-object v4
.end method

.method private findUntypedData(Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .parameter
    .parameter "type"
    .parameter "contentItemType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity$NamedContentValues;",
            ">;I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity$NamedContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1061
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1064
    .local v4, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Entity$NamedContentValues;

    .line 1065
    .local v3, namedContentValues:Landroid/content/Entity$NamedContentValues;
    iget-object v6, v3, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    .line 1066
    .local v6, uri:Landroid/net/Uri;
    iget-object v0, v3, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 1067
    .local v0, cv:Landroid/content/ContentValues;
    sget-object v8, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1068
    const-string v8, "mimetype"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1069
    .local v2, mimeType:Ljava/lang/String;
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1070
    const/4 v8, -0x1

    if-eq p2, v8, :cond_1

    .line 1071
    const-string v8, "data2"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1072
    .local v5, subtype:I
    if-ne p2, v5, :cond_0

    .line 1076
    .end local v5           #subtype:I
    :cond_1
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1083
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v2           #mimeType:Ljava/lang/String;
    .end local v3           #namedContentValues:Landroid/content/Entity$NamedContentValues;
    .end local v6           #uri:Landroid/net/Uri;
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Entity$NamedContentValues;

    .line 1084
    .local v7, values:Landroid/content/Entity$NamedContentValues;
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1088
    .end local v7           #values:Landroid/content/Entity$NamedContentValues;
    :cond_3
    return-object v4
.end method

.method private newRowBuilder(Landroid/content/Entity;Ljava/lang/String;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    .locals 4
    .parameter "entity"
    .parameter "mimeType"

    .prologue
    .line 1142
    iget v1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mContactBackValue:I

    .line 1143
    .local v1, contactId:I
    if-eqz p1, :cond_0

    .line 1144
    invoke-virtual {p1}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1148
    :cond_0
    new-instance v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    iget-object v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;-><init>(Lcom/android/exchange/adapter/ContactsSyncAdapter;Landroid/content/ContentProviderOperation$Builder;)V

    .line 1151
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    if-nez p1, :cond_1

    .line 1152
    const-string v2, "raw_contact_id"

    invoke-virtual {v0, v2, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValueBackReference(Ljava/lang/String;I)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1158
    :goto_0
    const-string v2, "mimetype"

    invoke-virtual {v0, v2, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1159
    return-object v0

    .line 1154
    :cond_1
    const-string v2, "raw_contact_id"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    goto :goto_0
.end method

.method private typedRowBuilder(Landroid/content/Entity;Ljava/lang/String;I)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    .locals 1
    .parameter "entity"
    .parameter "mimeType"
    .parameter "type"

    .prologue
    .line 1132
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->createBuilder(Landroid/content/Entity;Ljava/lang/String;ILjava/lang/String;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    return-object v0
.end method

.method private untypedRowBuilder(Landroid/content/Entity;Ljava/lang/String;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    .locals 2
    .parameter "entity"
    .parameter "mimeType"

    .prologue
    .line 1136
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->createBuilder(Landroid/content/Entity;Ljava/lang/String;ILjava/lang/String;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(Landroid/content/ContentProviderOperation;)Z
    .locals 1
    .parameter "op"

    .prologue
    .line 961
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 962
    iget v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mCount:I

    .line 963
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 949
    check-cast p1, Landroid/content/ContentProviderOperation;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    move-result v0

    return v0
.end method

.method public addBirthday(Landroid/content/Entity;Ljava/lang/String;)V
    .locals 4
    .parameter "entity"
    .parameter "birthday"

    .prologue
    const/4 v3, 0x3

    .line 1198
    const-string v2, "vnd.android.cursor.item/contact_event"

    invoke-direct {p0, p1, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->typedRowBuilder(Landroid/content/Entity;Ljava/lang/String;I)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1200
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    iget-object v1, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 1201
    .local v1, cv:Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    const-string v2, "data1"

    invoke-direct {p0, v1, v2, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1207
    :goto_0
    return-void

    .line 1204
    :cond_0
    const-string v2, "data1"

    invoke-virtual {v0, v2, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1205
    const-string v2, "data2"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1206
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_0
.end method

.method public addBusiness(Landroid/content/Entity;Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;)V
    .locals 4
    .parameter "entity"
    .parameter "business"

    .prologue
    .line 1251
    const-string v2, "vnd.android.cursor.item/eas_business"

    invoke-direct {p0, p1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->untypedRowBuilder(Landroid/content/Entity;Ljava/lang/String;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1252
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    iget-object v1, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 1253
    .local v1, cv:Landroid/content/ContentValues;
    if-eqz v1, :cond_1

    const-string v2, "data8"

    iget-object v3, p2, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;->accountName:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "data6"

    iget-object v3, p2, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;->customerId:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "data7"

    iget-object v3, p2, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;->governmentId:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1265
    :cond_0
    :goto_0
    return-void

    .line 1258
    :cond_1
    invoke-virtual {p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;->hasData()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1261
    const-string v2, "data8"

    iget-object v3, p2, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;->accountName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1262
    const-string v2, "data6"

    iget-object v3, p2, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;->customerId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1263
    const-string v2, "data7"

    iget-object v3, p2, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;->governmentId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1264
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_0
.end method

.method public addChildren(Landroid/content/Entity;Ljava/util/ArrayList;)V
    .locals 6
    .parameter "entity"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Entity;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1182
    .local p2, children:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "vnd.android.cursor.item/eas_children"

    invoke-direct {p0, p1, v5}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->untypedRowBuilder(Landroid/content/Entity;Ljava/lang/String;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1183
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    const/4 v2, 0x0

    .line 1184
    .local v2, i:I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1185
    .local v1, child:Ljava/lang/String;
    sget-object v5, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasChildren;->ROWS:[Ljava/lang/String;

    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    aget-object v5, v5, v2

    invoke-virtual {v0, v5, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_0

    .line 1187
    .end local v1           #child:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1188
    return-void
.end method

.method public addGroup(Landroid/content/Entity;Ljava/lang/String;)V
    .locals 3
    .parameter "entity"
    .parameter "group"

    .prologue
    .line 1191
    const-string v1, "vnd.android.cursor.item/group_membership"

    const/4 v2, -0x1

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->createBuilder(Landroid/content/Entity;Ljava/lang/String;ILjava/lang/String;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1193
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    const-string v1, "group_sourceid"

    invoke-virtual {v0, v1, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1194
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1195
    return-void
.end method

.method public addName(Landroid/content/Entity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "entity"
    .parameter "prefix"
    .parameter "givenName"
    .parameter "familyName"
    .parameter "middleName"
    .parameter "suffix"
    .parameter "displayName"
    .parameter "yomiFirstName"
    .parameter "yomiLastName"
    .parameter "fileAs"

    .prologue
    .line 1212
    const-string v2, "vnd.android.cursor.item/name"

    invoke-direct {p0, p1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->untypedRowBuilder(Landroid/content/Entity;Ljava/lang/String;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1213
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    iget-object v1, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 1214
    .local v1, cv:Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    const-string v2, "data2"

    invoke-direct {p0, v1, v2, p3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "data3"

    invoke-direct {p0, v1, v2, p4}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "data5"

    invoke-direct {p0, v1, v2, p5}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "data4"

    invoke-direct {p0, v1, v2, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "data7"

    invoke-direct {p0, v1, v2, p8}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "data9"

    invoke-direct {p0, v1, v2, p9}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "data6"

    invoke-direct {p0, v1, v2, p6}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1233
    :goto_0
    return-void

    .line 1224
    :cond_0
    const-string v2, "data2"

    invoke-virtual {v0, v2, p3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1225
    const-string v2, "data3"

    invoke-virtual {v0, v2, p4}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1226
    const-string v2, "data5"

    invoke-virtual {v0, v2, p5}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1227
    const-string v2, "data6"

    invoke-virtual {v0, v2, p6}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1228
    const-string v2, "data7"

    invoke-virtual {v0, v2, p8}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1229
    const-string v2, "data9"

    invoke-virtual {v0, v2, p9}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1230
    const-string v2, "data4"

    invoke-virtual {v0, v2, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1232
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_0
.end method

.method public addNickname(Landroid/content/Entity;Ljava/lang/String;)V
    .locals 4
    .parameter "entity"
    .parameter "name"

    .prologue
    const/4 v3, 0x1

    .line 1310
    const-string v2, "vnd.android.cursor.item/nickname"

    invoke-direct {p0, p1, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->typedRowBuilder(Landroid/content/Entity;Ljava/lang/String;I)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1312
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    iget-object v1, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 1313
    .local v1, cv:Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    const-string v2, "data1"

    invoke-direct {p0, v1, v2, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1319
    :goto_0
    return-void

    .line 1316
    :cond_0
    const-string v2, "data2"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1317
    const-string v2, "data1"

    invoke-virtual {v0, v2, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1318
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_0
.end method

.method public addNote(Landroid/content/Entity;Ljava/lang/String;)V
    .locals 7
    .parameter "entity"
    .parameter "note"

    .prologue
    .line 1436
    const-string v5, "vnd.android.cursor.item/note"

    const/4 v6, -0x1

    invoke-direct {p0, p1, v5, v6}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->typedRowBuilder(Landroid/content/Entity;Ljava/lang/String;I)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1437
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    iget-object v2, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 1438
    .local v2, cv:Landroid/content/ContentValues;
    if-nez p2, :cond_1

    .line 1458
    :cond_0
    :goto_0
    return-void

    .line 1439
    :cond_1
    const-string v5, "\r\n"

    const-string v6, "\n"

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1440
    if-eqz v2, :cond_2

    const-string v5, "data1"

    invoke-direct {p0, v2, v5, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1446
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    .line 1447
    .local v4, len:I
    const/4 v3, 0x0

    .line 1448
    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 1449
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1450
    .local v1, c:C
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1454
    .end local v1           #c:C
    :cond_3
    if-eq v3, v4, :cond_0

    .line 1456
    const-string v5, "data1"

    invoke-virtual {v0, v5, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1457
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_0

    .line 1448
    .restart local v1       #c:C
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public addOrganization(Landroid/content/Entity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "entity"
    .parameter "type"
    .parameter "company"
    .parameter "title"
    .parameter "department"
    .parameter "yomiCompanyName"
    .parameter "officeLocation"

    .prologue
    .line 1417
    const-string v2, "vnd.android.cursor.item/organization"

    invoke-direct {p0, p1, v2, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->typedRowBuilder(Landroid/content/Entity;Ljava/lang/String;I)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1418
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    iget-object v1, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 1419
    .local v1, cv:Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    const-string v2, "data1"

    invoke-direct {p0, v1, v2, p3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "data8"

    invoke-direct {p0, v1, v2, p6}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "data5"

    invoke-direct {p0, v1, v2, p5}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "data4"

    invoke-direct {p0, v1, v2, p4}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "data9"

    invoke-direct {p0, v1, v2, p7}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1433
    :goto_0
    return-void

    .line 1426
    :cond_0
    const-string v2, "data2"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1427
    const-string v2, "data1"

    invoke-virtual {v0, v2, p3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1428
    const-string v2, "data4"

    invoke-virtual {v0, v2, p4}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1429
    const-string v2, "data5"

    invoke-virtual {v0, v2, p5}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1430
    const-string v2, "data8"

    invoke-virtual {v0, v2, p6}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1431
    const-string v2, "data9"

    invoke-virtual {v0, v2, p7}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1432
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_0
.end method

.method public addPersonal(Landroid/content/Entity;Lcom/android/exchange/adapter/ContactsSyncAdapter$EasPersonal;)V
    .locals 4
    .parameter "entity"
    .parameter "personal"

    .prologue
    .line 1236
    const-string v2, "vnd.android.cursor.item/eas_personal"

    invoke-direct {p0, p1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->untypedRowBuilder(Landroid/content/Entity;Ljava/lang/String;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1237
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    iget-object v1, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 1238
    .local v1, cv:Landroid/content/ContentValues;
    if-eqz v1, :cond_1

    const-string v2, "data2"

    iget-object v3, p2, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasPersonal;->anniversary:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "data4"

    iget-object v3, p2, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasPersonal;->fileAs:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1248
    :cond_0
    :goto_0
    return-void

    .line 1242
    :cond_1
    invoke-virtual {p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasPersonal;->hasData()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1245
    const-string v2, "data4"

    iget-object v3, p2, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasPersonal;->fileAs:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1246
    const-string v2, "data2"

    iget-object v3, p2, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasPersonal;->anniversary:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1247
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_0
.end method

.method public addPhone(Landroid/content/Entity;ILjava/lang/String;)V
    .locals 4
    .parameter "entity"
    .parameter "type"
    .parameter "phone"

    .prologue
    .line 1277
    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-direct {p0, p1, v2, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->typedRowBuilder(Landroid/content/Entity;Ljava/lang/String;I)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1278
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    iget-object v1, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 1279
    .local v1, cv:Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    const-string v2, "data1"

    invoke-direct {p0, v1, v2, p3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1285
    :goto_0
    return-void

    .line 1282
    :cond_0
    const-string v2, "data2"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1283
    const-string v2, "data1"

    invoke-virtual {v0, v2, p3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1284
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_0
.end method

.method public addPhoto(Landroid/content/Entity;Ljava/lang/String;)V
    .locals 3
    .parameter "entity"
    .parameter "photo"

    .prologue
    .line 1268
    const-string v2, "vnd.android.cursor.item/photo"

    invoke-direct {p0, p1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->untypedRowBuilder(Landroid/content/Entity;Ljava/lang/String;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1271
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    const/4 v2, 0x0

    invoke-static {p2, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 1272
    .local v1, pic:[B
    const-string v2, "data15"

    invoke-virtual {v0, v2, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1273
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1274
    return-void
.end method

.method public addPostal(Landroid/content/Entity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "entity"
    .parameter "type"
    .parameter "street"
    .parameter "city"
    .parameter "state"
    .parameter "country"
    .parameter "code"

    .prologue
    .line 1323
    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    invoke-direct {p0, p1, v2, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->typedRowBuilder(Landroid/content/Entity;Ljava/lang/String;I)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1325
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    iget-object v1, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 1326
    .local v1, cv:Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    const-string v2, "data7"

    invoke-direct {p0, v1, v2, p4}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "data4"

    invoke-direct {p0, v1, v2, p3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "data10"

    invoke-direct {p0, v1, v2, p6}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "data9"

    invoke-direct {p0, v1, v2, p7}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "data8"

    invoke-direct {p0, v1, v2, p5}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1340
    :goto_0
    return-void

    .line 1333
    :cond_0
    const-string v2, "data2"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1334
    const-string v2, "data7"

    invoke-virtual {v0, v2, p4}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1335
    const-string v2, "data4"

    invoke-virtual {v0, v2, p3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1336
    const-string v2, "data10"

    invoke-virtual {v0, v2, p6}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1337
    const-string v2, "data9"

    invoke-virtual {v0, v2, p7}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1338
    const-string v2, "data8"

    invoke-virtual {v0, v2, p5}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1339
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_0
.end method

.method public addRelation(Landroid/content/Entity;ILjava/lang/String;)V
    .locals 4
    .parameter "entity"
    .parameter "type"
    .parameter "value"

    .prologue
    .line 1299
    const-string v2, "vnd.android.cursor.item/relation"

    invoke-direct {p0, p1, v2, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->typedRowBuilder(Landroid/content/Entity;Ljava/lang/String;I)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1300
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    iget-object v1, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 1301
    .local v1, cv:Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    const-string v2, "data1"

    invoke-direct {p0, v1, v2, p3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1307
    :goto_0
    return-void

    .line 1304
    :cond_0
    const-string v2, "data2"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1305
    const-string v2, "data1"

    invoke-virtual {v0, v2, p3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1306
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_0
.end method

.method public addUntyped(Landroid/content/Entity;Ljava/util/ArrayList;Ljava/lang/String;II)V
    .locals 19
    .parameter "entity"
    .parameter
    .parameter "mimeType"
    .parameter "type"
    .parameter "maxRows"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Entity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 1351
    .local p2, rows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;>;"
    invoke-static {}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->access$800()Ljava/util/ArrayList;

    move-result-object v13

    .line 1352
    .local v13, oldValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    invoke-static {}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->access$800()Ljava/util/ArrayList;

    move-result-object v7

    .line 1353
    .local v7, entityValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    if-eqz p1, :cond_0

    .line 1354
    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, p4

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->findUntypedData(Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 1355
    invoke-virtual/range {p1 .. p1}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v7

    .line 1359
    :cond_0
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1362
    .local v16, rowsToReplace:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 1363
    .local v12, numRows:I
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;

    .line 1364
    .local v14, row:Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;
    const/4 v8, 0x0

    .line 1366
    .local v8, found:Z
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/Entity$NamedContentValues;

    .line 1367
    .local v11, ncv:Landroid/content/Entity$NamedContentValues;
    iget-object v5, v11, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 1368
    .local v5, cv:Landroid/content/ContentValues;
    const-string v17, "data1"

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1369
    .local v6, data:Ljava/lang/String;
    const/4 v15, -0x1

    .line 1370
    .local v15, rowType:I
    const-string v17, "data2"

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1371
    const-string v17, "data2"

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 1373
    :cond_3
    invoke-interface {v14, v15, v6}, Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;->isSameAs(ILjava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1374
    const-string v17, "com.android.exchange.FOUND_ROW"

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object v0, v5

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1376
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1377
    const/4 v8, 0x1

    .line 1381
    .end local v5           #cv:Landroid/content/ContentValues;
    .end local v6           #data:Ljava/lang/String;
    .end local v11           #ncv:Landroid/content/Entity$NamedContentValues;
    .end local v15           #rowType:I
    :cond_4
    if-nez v8, :cond_1

    .line 1383
    move v0, v12

    move/from16 v1, p5

    if-ge v0, v1, :cond_5

    .line 1385
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->newRowBuilder(Landroid/content/Entity;Ljava/lang/String;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v4

    .line 1386
    .local v4, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    invoke-interface {v14, v4}, Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;->addValues(Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;)V

    .line 1387
    invoke-virtual {v4}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1388
    add-int/lit8 v12, v12, 0x1

    .line 1389
    goto :goto_0

    .line 1391
    .end local v4           #builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    :cond_5
    move-object/from16 v0, v16

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1397
    .end local v8           #found:Z
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v14           #row:Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;
    :cond_6
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;

    .line 1398
    .restart local v14       #row:Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_8
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/Entity$NamedContentValues;

    .line 1399
    .restart local v11       #ncv:Landroid/content/Entity$NamedContentValues;
    iget-object v5, v11, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 1401
    .restart local v5       #cv:Landroid/content/ContentValues;
    const-string v17, "com.android.exchange.FOUND_ROW"

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 1403
    new-instance v4, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->dataUriFromNamedContentValues(Landroid/content/Entity$NamedContentValues;)Landroid/net/Uri;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v18

    move-object v0, v4

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object v3, v11

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;-><init>(Lcom/android/exchange/adapter/ContactsSyncAdapter;Landroid/content/ContentProviderOperation$Builder;Landroid/content/Entity$NamedContentValues;)V

    .line 1408
    .restart local v4       #builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    invoke-interface {v14, v4}, Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;->addValues(Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;)V

    .line 1409
    invoke-virtual {v4}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_1

    .line 1413
    .end local v4           #builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    .end local v5           #cv:Landroid/content/ContentValues;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #ncv:Landroid/content/Entity$NamedContentValues;
    .end local v14           #row:Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;
    :cond_9
    return-void
.end method

.method public addWebpage(Landroid/content/Entity;Ljava/lang/String;)V
    .locals 4
    .parameter "entity"
    .parameter "url"

    .prologue
    .line 1288
    const-string v2, "vnd.android.cursor.item/website"

    invoke-direct {p0, p1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->untypedRowBuilder(Landroid/content/Entity;Ljava/lang/String;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1289
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    iget-object v1, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 1290
    .local v1, cv:Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    const-string v2, "data1"

    invoke-direct {p0, v1, v2, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1296
    :goto_0
    return-void

    .line 1293
    :cond_0
    const-string v2, "data2"

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1294
    const-string v2, "data1"

    invoke-virtual {v0, v2, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1295
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_0
.end method

.method public createBuilder(Landroid/content/Entity;Ljava/lang/String;ILjava/lang/String;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    .locals 4
    .parameter "entity"
    .parameter "mimeType"
    .parameter "type"
    .parameter "stringType"

    .prologue
    .line 1108
    const/4 v0, 0x0

    .line 1110
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    if-eqz p1, :cond_0

    .line 1111
    invoke-virtual {p1}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v2, p2, p3, p4}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->findTypedData(Ljava/util/ArrayList;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Entity$NamedContentValues;

    move-result-object v1

    .line 1113
    .local v1, ncv:Landroid/content/Entity$NamedContentValues;
    if-eqz v1, :cond_0

    .line 1114
    new-instance v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .end local v0           #builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    iget-object v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    iget-object v3, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    invoke-virtual {v3, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->dataUriFromNamedContentValues(Landroid/content/Entity$NamedContentValues;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;-><init>(Lcom/android/exchange/adapter/ContactsSyncAdapter;Landroid/content/ContentProviderOperation$Builder;Landroid/content/Entity$NamedContentValues;)V

    .line 1122
    .end local v1           #ncv:Landroid/content/Entity$NamedContentValues;
    .restart local v0       #builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    :cond_0
    if-nez v0, :cond_1

    .line 1123
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->newRowBuilder(Landroid/content/Entity;Ljava/lang/String;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1128
    :cond_1
    return-object v0
.end method

.method public delete(J)V
    .locals 3
    .parameter "id"

    .prologue
    .line 978
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 984
    return-void
.end method

.method public execute()V
    .locals 6

    .prologue
    .line 987
    iget-object v1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    iget-object v1, v1, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v1}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 988
    :try_start_0
    iget-object v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    iget-object v2, v2, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v2}, Lcom/android/exchange/EasSyncService;->isStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 990
    :try_start_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 991
    iget-object v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    iget-object v2, v2, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    const-string v3, "Executing "

    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->size()I

    move-result v4

    const-string v5, " CPO\'s"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;ILjava/lang/String;)V

    .line 992
    iget-object v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    iget-object v2, v2, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.android.contacts"

    invoke-virtual {v2, v3, p0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mResults:[Landroid/content/ContentProviderResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1003
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 1004
    return-void

    .line 995
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 997
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "EasContactsSyncAdapter"

    const-string v3, "problem inserting contact during server update"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1003
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 998
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 1000
    .local v0, e:Landroid/content/OperationApplicationException;
    :try_start_3
    const-string v2, "EasContactsSyncAdapter"

    const-string v3, "problem inserting contact during server update"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public newContact(Ljava/lang/String;)V
    .locals 5
    .parameter "serverId"

    .prologue
    .line 967
    iget-object v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->access$700(Lcom/android/exchange/adapter/ContactsSyncAdapter;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 969
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 970
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "sourceid"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 972
    iget v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mCount:I

    iput v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mContactBackValue:I

    .line 973
    iget-object v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mContactIndexArray:[I

    iget v3, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mContactIndexCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mContactIndexCount:I

    iget v4, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mCount:I

    aput v4, v2, v3

    .line 974
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 975
    return-void
.end method
