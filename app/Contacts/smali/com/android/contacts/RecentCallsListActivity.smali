.class public Lcom/android/contacts/RecentCallsListActivity;
.super Landroid/app/ListActivity;
.source "RecentCallsListActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/RecentCallsListActivity$QueryHandler;,
        Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;,
        Lcom/android/contacts/RecentCallsListActivity$CallerInfoQuery;,
        Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;,
        Lcom/android/contacts/RecentCallsListActivity$ContactInfo;
    }
.end annotation


# static fields
.field static final CALL_LOG_PROJECTION:[Ljava/lang/String;

.field static final PHONES_PROJECTION:[Ljava/lang/String;


# instance fields
.field mAdapter:Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;

.field private mCurrentCountryIso:Ljava/lang/String;

.field private mQueryHandler:Lcom/android/contacts/RecentCallsListActivity$QueryHandler;

.field private mScrollToTop:Z

.field mVoiceMailNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 89
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "duration"

    aput-object v1, v0, v6

    const-string v1, "type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "numbertype"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "numberlabel"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "countryiso"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/RecentCallsListActivity;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    .line 111
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v5

    const-string v1, "label"

    aput-object v1, v0, v6

    const-string v1, "number"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "normalized_number"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/RecentCallsListActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 766
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/RecentCallsListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/contacts/RecentCallsListActivity;->startQuery()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/RecentCallsListActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/RecentCallsListActivity;->formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/RecentCallsListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/contacts/RecentCallsListActivity;->mScrollToTop:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/contacts/RecentCallsListActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/contacts/RecentCallsListActivity;->mScrollToTop:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/contacts/RecentCallsListActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/contacts/RecentCallsListActivity;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/RecentCallsListActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/contacts/RecentCallsListActivity;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/RecentCallsListActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/contacts/RecentCallsListActivity;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method private callEntry(I)V
    .locals 7
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1199
    if-gez p1, :cond_0

    .line 1203
    const/4 p1, 0x0

    .line 1205
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/RecentCallsListActivity;->mAdapter:Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;

    invoke-virtual {v4, p1}, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 1206
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_1

    .line 1207
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1208
    .local v3, number:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "-1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "-2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "-3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1237
    .end local v3           #number:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1217
    .restart local v3       #number:Ljava/lang/String;
    :cond_2
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1218
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL_PRIVILEGED"

    const-string v5, "sip"

    invoke-static {v5, v3, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1233
    .local v2, intent:Landroid/content/Intent;
    :goto_1
    const/high16 v4, 0x1080

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1235
    invoke-virtual {p0, v2}, Lcom/android/contacts/RecentCallsListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1223
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    const/4 v4, 0x4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1224
    .local v0, callType:I
    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    if-eq v0, v5, :cond_4

    const/4 v4, 0x3

    if-ne v0, v4, :cond_5

    .line 1228
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/contacts/RecentCallsListActivity;->getBetterNumberFromContacts(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1230
    :cond_5
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL_PRIVILEGED"

    const-string v5, "tel"

    invoke-static {v5, v3, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_1
.end method

.method private formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "number"
    .parameter "normalizedNumber"
    .parameter "countryIso"

    .prologue
    .line 916
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 917
    const-string v0, ""

    .line 926
    :goto_0
    return-object v0

    .line 920
    :cond_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 921
    goto :goto_0

    .line 923
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 924
    iget-object p3, p0, Lcom/android/contacts/RecentCallsListActivity;->mCurrentCountryIso:Ljava/lang/String;

    .line 926
    :cond_2
    invoke-static {p1, p2, p3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getBetterNumberFromContacts(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "number"

    .prologue
    .line 1168
    const/4 v7, 0x0

    .line 1170
    .local v7, matchingNumber:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/RecentCallsListActivity;->mAdapter:Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mContactInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;

    .line 1171
    .local v6, ci:Lcom/android/contacts/RecentCallsListActivity$ContactInfo;
    if-eqz v6, :cond_3

    sget-object v0, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->EMPTY:Lcom/android/contacts/RecentCallsListActivity$ContactInfo;

    if-eq v6, v0, :cond_3

    .line 1172
    iget-object v7, v6, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->number:Ljava/lang/String;

    .line 1190
    :cond_0
    :goto_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "+"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 1193
    :cond_1
    move-object p1, v7

    .line 1195
    :cond_2
    return-object p1

    .line 1175
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/android/contacts/RecentCallsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/RecentCallsListActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1180
    .local v8, phonesCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 1181
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1182
    const/4 v0, 0x4

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1184
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1186
    .end local v8           #phonesCursor:Landroid/database/Cursor;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private resetNewCallsFlag()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 931
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v0, "type="

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 932
    .local v7, where:Ljava/lang/StringBuilder;
    const/4 v0, 0x3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 933
    const-string v0, " AND new=1"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 935
    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 936
    .local v4, values:Landroid/content/ContentValues;
    const-string v0, "new"

    const-string v1, "0"

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    iget-object v0, p0, Lcom/android/contacts/RecentCallsListActivity;->mQueryHandler:Lcom/android/contacts/RecentCallsListActivity$QueryHandler;

    const/16 v1, 0x36

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/RecentCallsListActivity$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 939
    return-void
.end method

.method private startQuery()V
    .locals 8

    .prologue
    const/16 v1, 0x35

    const/4 v2, 0x0

    .line 942
    iget-object v0, p0, Lcom/android/contacts/RecentCallsListActivity;->mAdapter:Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->setLoading(Z)V

    .line 945
    iget-object v0, p0, Lcom/android/contacts/RecentCallsListActivity;->mQueryHandler:Lcom/android/contacts/RecentCallsListActivity$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/contacts/RecentCallsListActivity$QueryHandler;->cancelOperation(I)V

    .line 946
    iget-object v0, p0, Lcom/android/contacts/RecentCallsListActivity;->mQueryHandler:Lcom/android/contacts/RecentCallsListActivity$QueryHandler;

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/contacts/RecentCallsListActivity;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    const-string v7, "date DESC"

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/RecentCallsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .parameter "item"

    .prologue
    const/4 v10, 0x0

    .line 1086
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v6

    check-cast v6, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1092
    .local v6, menuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 1114
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v8

    .end local v6           #menuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :goto_1
    return v8

    .line 1087
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 1088
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v8, "RecentCallsList"

    const-string v9, "bad menuInfoIn"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v8, v10

    .line 1089
    goto :goto_1

    .line 1094
    .end local v1           #e:Ljava/lang/ClassCastException;
    .restart local v6       #menuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :pswitch_0
    iget-object v8, p0, Lcom/android/contacts/RecentCallsListActivity;->mAdapter:Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;

    iget v9, v6, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v8, v9}, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 1095
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v2, 0x1

    .line 1096
    .local v2, groupSize:I
    iget-object v8, p0, Lcom/android/contacts/RecentCallsListActivity;->mAdapter:Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;

    iget v9, v6, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v8, v9}, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->isGroupHeader(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1097
    iget-object v8, p0, Lcom/android/contacts/RecentCallsListActivity;->mAdapter:Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;

    iget v9, v6, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v8, v9}, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->getGroupSize(I)I

    move-result v2

    .line 1100
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1101
    .local v7, sb:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v2, :cond_2

    .line 1102
    if-eqz v3, :cond_1

    .line 1103
    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1104
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 1106
    :cond_1
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1107
    .local v4, id:J
    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1101
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1110
    .end local v4           #id:J
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/RecentCallsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "_id IN ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 1092
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 827
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 829
    const v0, 0x7f04003f

    invoke-virtual {p0, v0}, Lcom/android/contacts/RecentCallsListActivity;->setContentView(I)V

    .line 832
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/RecentCallsListActivity;->setDefaultKeyMode(I)V

    .line 834
    new-instance v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;

    invoke-direct {v0, p0}, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;-><init>(Lcom/android/contacts/RecentCallsListActivity;)V

    iput-object v0, p0, Lcom/android/contacts/RecentCallsListActivity;->mAdapter:Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;

    .line 835
    invoke-virtual {p0}, Lcom/android/contacts/RecentCallsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 836
    iget-object v0, p0, Lcom/android/contacts/RecentCallsListActivity;->mAdapter:Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;

    invoke-virtual {p0, v0}, Lcom/android/contacts/RecentCallsListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 838
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/contacts/RecentCallsListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/RecentCallsListActivity;->mVoiceMailNumber:Ljava/lang/String;

    .line 840
    new-instance v0, Lcom/android/contacts/RecentCallsListActivity$QueryHandler;

    invoke-direct {v0, p0}, Lcom/android/contacts/RecentCallsListActivity$QueryHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/RecentCallsListActivity;->mQueryHandler:Lcom/android/contacts/RecentCallsListActivity$QueryHandler;

    .line 842
    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/RecentCallsListActivity;->mCurrentCountryIso:Ljava/lang/String;

    .line 843
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 22
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfoIn"

    .prologue
    .line 961
    :try_start_0
    move-object/from16 v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v12, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 967
    .local v12, menuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity;->mAdapter:Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;

    move-object v15, v0

    move-object v0, v12

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/Cursor;

    .line 969
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v15, 0x1

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 970
    .local v13, number:Ljava/lang/String;
    const/4 v14, 0x0

    .line 971
    .local v14, numberUri:Landroid/net/Uri;
    const/4 v11, 0x0

    .line 972
    .local v11, isVoicemail:Z
    const/4 v10, 0x0

    .line 973
    .local v10, isSipNumber:Z
    const-string v15, "-1"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 974
    const v15, 0x7f0c0074

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/android/contacts/RecentCallsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 990
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity;->mAdapter:Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;

    move-object v15, v0

    invoke-virtual {v15, v13}, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->getContactInfo(Ljava/lang/String;)Lcom/android/contacts/RecentCallsListActivity$ContactInfo;

    move-result-object v8

    .line 991
    .local v8, info:Lcom/android/contacts/RecentCallsListActivity$ContactInfo;
    if-eqz v8, :cond_9

    sget-object v15, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->EMPTY:Lcom/android/contacts/RecentCallsListActivity$ContactInfo;

    if-eq v8, v15, :cond_9

    const/4 v15, 0x1

    move v5, v15

    .line 992
    .local v5, contactInfoPresent:Z
    :goto_1
    if-eqz v5, :cond_a

    .line 993
    iget-object v15, v8, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 998
    :goto_2
    if-eqz v14, :cond_0

    .line 999
    new-instance v9, Landroid/content/Intent;

    const-string v15, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v9, v15, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1000
    .local v9, intent:Landroid/content/Intent;
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/RecentCallsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0c0069

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v13, v20, v21

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v4, v18

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v15

    invoke-interface {v15, v9}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1004
    .end local v9           #intent:Landroid/content/Intent;
    :cond_0
    if-eqz v5, :cond_1

    .line 1005
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0c001b

    move-object/from16 v0, p1

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v15

    new-instance v16, Landroid/content/Intent;

    const-string v17, "android.intent.action.VIEW"

    sget-object v18, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v8

    iget-wide v0, v0, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->personId:J

    move-wide/from16 v19, v0

    invoke-static/range {v18 .. v20}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18

    invoke-direct/range {v16 .. v18}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface/range {v15 .. v16}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1010
    :cond_1
    if-eqz v14, :cond_2

    if-nez v11, :cond_2

    if-nez v10, :cond_2

    .line 1011
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0c006a

    move-object/from16 v0, p1

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v15

    new-instance v16, Landroid/content/Intent;

    const-string v17, "android.intent.action.DIAL"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface/range {v15 .. v16}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1013
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0c0068

    move-object/from16 v0, p1

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v15

    new-instance v16, Landroid/content/Intent;

    const-string v17, "android.intent.action.SENDTO"

    const-string v18, "sms"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object v1, v13

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    invoke-direct/range {v16 .. v18}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface/range {v15 .. v16}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1019
    :cond_2
    if-nez v5, :cond_3

    if-eqz v14, :cond_3

    if-nez v11, :cond_3

    if-nez v10, :cond_3

    .line 1030
    new-instance v9, Landroid/content/Intent;

    const-string v15, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v9, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1031
    .restart local v9       #intent:Landroid/content/Intent;
    const-string v15, "vnd.android.cursor.item/contact"

    invoke-virtual {v9, v15}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1032
    const-string v15, "phone"

    invoke-virtual {v9, v15, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1033
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7f0c006b

    move-object/from16 v0, p1

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v15

    invoke-interface {v15, v9}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1036
    .end local v9           #intent:Landroid/content/Intent;
    :cond_3
    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const v18, 0x7f0c006c

    move-object/from16 v0, p1

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1037
    .end local v5           #contactInfoPresent:Z
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v8           #info:Lcom/android/contacts/RecentCallsListActivity$ContactInfo;
    .end local v10           #isSipNumber:Z
    .end local v11           #isVoicemail:Z
    .end local v12           #menuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .end local v13           #number:Ljava/lang/String;
    .end local v14           #numberUri:Landroid/net/Uri;
    :goto_3
    return-void

    .line 962
    :catch_0
    move-exception v7

    .line 963
    .local v7, e:Ljava/lang/ClassCastException;
    const-string v15, "RecentCallsList"

    const-string v16, "bad menuInfoIn"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 975
    .end local v7           #e:Ljava/lang/ClassCastException;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v10       #isSipNumber:Z
    .restart local v11       #isVoicemail:Z
    .restart local v12       #menuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .restart local v13       #number:Ljava/lang/String;
    .restart local v14       #numberUri:Landroid/net/Uri;
    :cond_4
    const-string v15, "-2"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 976
    const v15, 0x7f0c0075

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/android/contacts/RecentCallsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0

    .line 977
    :cond_5
    const-string v15, "-3"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 978
    const v15, 0x7f0c0076

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/android/contacts/RecentCallsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0

    .line 979
    :cond_6
    invoke-static {v13}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity;->mVoiceMailNumber:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 980
    const v15, 0x7f0c0073

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/android/contacts/RecentCallsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 981
    const-string v15, "voicemail:x"

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 982
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 983
    :cond_7
    invoke-static {v13}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 984
    const-string v15, "sip"

    const/16 v16, 0x0

    move-object v0, v15

    move-object v1, v13

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 985
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 987
    :cond_8
    const-string v15, "tel"

    const/16 v16, 0x0

    move-object v0, v15

    move-object v1, v13

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    goto/16 :goto_0

    .line 991
    .restart local v8       #info:Lcom/android/contacts/RecentCallsListActivity$ContactInfo;
    :cond_9
    const/4 v15, 0x0

    move v5, v15

    goto/16 :goto_1

    .line 995
    .restart local v5       #contactInfoPresent:Z
    :cond_a
    move-object/from16 v0, p1

    move-object v1, v13

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto/16 :goto_2
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "id"
    .parameter "args"

    .prologue
    const/4 v2, 0x0

    .line 1041
    packed-switch p1, :pswitch_data_0

    move-object v0, v2

    .line 1060
    :goto_0
    return-object v0

    .line 1043
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c006f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0070

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/contacts/RecentCallsListActivity$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/RecentCallsListActivity$1;-><init>(Lcom/android/contacts/RecentCallsListActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 1041
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 952
    const/4 v0, 0x2

    const v1, 0x7f0c006d

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 954
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 877
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 878
    iget-object v0, p0, Lcom/android/contacts/RecentCallsListActivity;->mAdapter:Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->stopRequestProcessing()V

    .line 879
    iget-object v0, p0, Lcom/android/contacts/RecentCallsListActivity;->mAdapter:Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 880
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1119
    packed-switch p1, :pswitch_data_0

    .line 1134
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    :goto_0
    return v3

    .line 1121
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    sub-long v0, v3, v5

    .line 1122
    .local v0, callPressDiff:J
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v3, v3

    cmp-long v3, v0, v3

    if-ltz v3, :cond_0

    .line 1124
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1125
    .local v2, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1127
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/contacts/RecentCallsListActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1130
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 1128
    :catch_0
    move-exception v3

    goto :goto_1

    .line 1119
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1139
    packed-switch p1, :pswitch_data_0

    .line 1155
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 1142
    :pswitch_0
    :try_start_0
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1144
    .local v0, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 1152
    .end local v0           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/RecentCallsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/contacts/RecentCallsListActivity;->callEntry(I)V

    .line 1153
    const/4 v1, 0x1

    goto :goto_0

    .line 1148
    :catch_0
    move-exception v1

    goto :goto_1

    .line 1139
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/android/contacts/RecentCallsListActivity;->mAdapter:Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;

    invoke-virtual {v0, p3}, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->isGroupHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1242
    iget-object v0, p0, Lcom/android/contacts/RecentCallsListActivity;->mAdapter:Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;

    invoke-virtual {v0, p3}, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->toggleGroup(I)V

    .line 1248
    :goto_0
    return-void

    .line 1244
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/CallDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1245
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p4, p5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1246
    invoke-virtual {p0, v0}, Lcom/android/contacts/RecentCallsListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 1065
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1078
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 1067
    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/android/contacts/RecentCallsListActivity;->showDialog(I)V

    move v1, v3

    .line 1068
    goto :goto_0

    .line 1072
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1073
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1074
    invoke-virtual {p0, v0}, Lcom/android/contacts/RecentCallsListActivity;->startActivity(Landroid/content/Intent;)V

    move v1, v3

    .line 1075
    goto :goto_0

    .line 1065
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 869
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 872
    iget-object v0, p0, Lcom/android/contacts/RecentCallsListActivity;->mAdapter:Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->stopRequestProcessing()V

    .line 873
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 855
    iget-object v0, p0, Lcom/android/contacts/RecentCallsListActivity;->mAdapter:Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/android/contacts/RecentCallsListActivity;->mAdapter:Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->clearCache()V

    .line 859
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/RecentCallsListActivity;->startQuery()V

    .line 860
    invoke-direct {p0}, Lcom/android/contacts/RecentCallsListActivity;->resetNewCallsFlag()V

    .line 862
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 864
    iget-object v0, p0, Lcom/android/contacts/RecentCallsListActivity;->mAdapter:Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 865
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 847
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/RecentCallsListActivity;->mScrollToTop:Z

    .line 848
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 849
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .parameter "hasFocus"

    .prologue
    .line 884
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onWindowFocusChanged(Z)V

    .line 888
    if-eqz p1, :cond_0

    .line 890
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 892
    .local v1, iTelephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_1

    .line 893
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->cancelMissedCallsNotification()V

    .line 902
    .end local v1           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 895
    .restart local v1       #iTelephony:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    const-string v2, "RecentCallsList"

    const-string v3, "Telephony service is null, can\'t call cancelMissedCallsNotification"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 898
    .end local v1           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 899
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "RecentCallsList"

    const-string v3, "Failed to clear missed calls notification due to remote exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 0
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 1253
    if-eqz p4, :cond_0

    .line 1254
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/ListActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 1258
    :goto_0
    return-void

    .line 1256
    :cond_0
    invoke-static {p0, p1}, Lcom/android/contacts/ContactsSearchManager;->startSearch(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
