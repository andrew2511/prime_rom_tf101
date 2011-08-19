.class public Lcom/android/browser/provider/BrowserProvider2;
.super Lcom/android/browser/provider/SQLiteContentProvider;
.source "BrowserProvider2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/provider/BrowserProvider2$SuggestionsCursor;,
        Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;
    }
.end annotation


# static fields
.field static final ACCOUNTS_PROJECTION_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final BOOKMARKS_PROJECTION_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final COMBINED_BOOKMARK_PROJECTION_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final COMBINED_HISTORY_PROJECTION_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final HISTORY_PROJECTION_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final IMAGES_PROJECTION_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final LEGACY_AUTHORITY_URI:Landroid/net/Uri;

.field static final OTHER_BOOKMARKS_PROJECTION_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final SEARCHES_PROJECTION_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final SETTINGS_PROJECTION_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUGGEST_PROJECTION:[Ljava/lang/String;

.field static final SYNC_STATE_PROJECTION_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field mOpenHelper:Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;

.field mSyncHelper:Lcom/android/common/content/SyncStateContentProviderHelper;

.field mWidgetObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0xbb9

    const/16 v5, 0xbb8

    const/16 v4, 0x3ec

    .line 74
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "browser"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/browser/provider/BrowserProvider2;->LEGACY_AUTHORITY_URI:Landroid/net/Uri;

    .line 96
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "title"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/browser/provider/BrowserProvider2;->SUGGEST_PROJECTION:[Ljava/lang/String;

    .line 147
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/browser/provider/BrowserProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/browser/provider/BrowserProvider2;->ACCOUNTS_PROJECTION_MAP:Ljava/util/HashMap;

    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/browser/provider/BrowserProvider2;->BOOKMARKS_PROJECTION_MAP:Ljava/util/HashMap;

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/browser/provider/BrowserProvider2;->OTHER_BOOKMARKS_PROJECTION_MAP:Ljava/util/HashMap;

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/browser/provider/BrowserProvider2;->HISTORY_PROJECTION_MAP:Ljava/util/HashMap;

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/browser/provider/BrowserProvider2;->SYNC_STATE_PROJECTION_MAP:Ljava/util/HashMap;

    .line 155
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/browser/provider/BrowserProvider2;->IMAGES_PROJECTION_MAP:Ljava/util/HashMap;

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/browser/provider/BrowserProvider2;->COMBINED_HISTORY_PROJECTION_MAP:Ljava/util/HashMap;

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/browser/provider/BrowserProvider2;->COMBINED_BOOKMARK_PROJECTION_MAP:Ljava/util/HashMap;

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/browser/provider/BrowserProvider2;->SEARCHES_PROJECTION_MAP:Ljava/util/HashMap;

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/browser/provider/BrowserProvider2;->SETTINGS_PROJECTION_MAP:Ljava/util/HashMap;

    .line 162
    sget-object v0, Lcom/android/browser/provider/BrowserProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 163
    const-string v1, "com.android.browser"

    .line 164
    const-string v1, "com.android.browser"

    const-string v2, "accounts"

    const/16 v3, 0x1b58

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 165
    const-string v1, "com.android.browser"

    const-string v2, "bookmarks"

    const/16 v3, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 166
    const-string v1, "com.android.browser"

    const-string v2, "bookmarks/#"

    const/16 v3, 0x3e9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 167
    const-string v1, "com.android.browser"

    const-string v2, "bookmarks/folder"

    const/16 v3, 0x3ea

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 168
    const-string v1, "com.android.browser"

    const-string v2, "bookmarks/folder/#"

    const/16 v3, 0x3eb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 169
    const-string v1, "com.android.browser"

    const-string v2, "bookmarks/folder/id"

    const/16 v3, 0x3ed

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 170
    const-string v1, "com.android.browser"

    const-string v2, "search_suggest_query"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 173
    const-string v1, "com.android.browser"

    const-string v2, "bookmarks/search_suggest_query"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 176
    const-string v1, "com.android.browser"

    const-string v2, "history"

    const/16 v3, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 177
    const-string v1, "com.android.browser"

    const-string v2, "history/#"

    const/16 v3, 0x7d1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 178
    const-string v1, "com.android.browser"

    const-string v2, "searches"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 179
    const-string v1, "com.android.browser"

    const-string v2, "searches/#"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 180
    const-string v1, "com.android.browser"

    const-string v2, "syncstate"

    const/16 v3, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 181
    const-string v1, "com.android.browser"

    const-string v2, "syncstate/#"

    const/16 v3, 0xfa1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 182
    const-string v1, "com.android.browser"

    const-string v2, "images"

    const/16 v3, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 183
    const-string v1, "com.android.browser"

    const-string v2, "combined"

    const/16 v3, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 184
    const-string v1, "com.android.browser"

    const-string v2, "combined/#"

    const/16 v3, 0x1771

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 185
    const-string v1, "com.android.browser"

    const-string v2, "settings"

    const/16 v3, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 188
    const-string v1, "browser"

    const-string v2, "searches"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 189
    const-string v1, "browser"

    const-string v2, "searches/#"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 190
    const-string v1, "browser"

    const-string v2, "bookmarks"

    const/16 v3, 0x2328

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 191
    const-string v1, "browser"

    const-string v2, "bookmarks/#"

    const/16 v3, 0x2329

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 192
    const-string v1, "browser"

    const-string v2, "search_suggest_query"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 195
    const-string v1, "browser"

    const-string v2, "bookmarks/search_suggest_query"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 203
    sget-object v0, Lcom/android/browser/provider/BrowserProvider2;->ACCOUNTS_PROJECTION_MAP:Ljava/util/HashMap;

    .line 204
    const-string v1, "account_type"

    const-string v2, "account_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v1, "account_name"

    const-string v2, "account_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/android/browser/provider/BrowserProvider2;->BOOKMARKS_PROJECTION_MAP:Ljava/util/HashMap;

    .line 209
    const-string v1, "_id"

    const-string v2, "bookmarks"

    const-string v3, "_id"

    invoke-static {v2, v3}, Lcom/android/browser/provider/BrowserProvider2;->qualifyColumn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v1, "title"

    const-string v2, "title"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v1, "url"

    const-string v2, "url"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v1, "favicon"

    const-string v2, "favicon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string v1, "thumbnail"

    const-string v2, "thumbnail"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v1, "touch_icon"

    const-string v2, "touch_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string v1, "folder"

    const-string v2, "folder"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string v1, "parent"

    const-string v2, "parent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string v1, "position"

    const-string v2, "position"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string v1, "insert_after"

    const-string v2, "insert_after"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string v1, "deleted"

    const-string v2, "deleted"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-string v1, "account_name"

    const-string v2, "account_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const-string v1, "account_type"

    const-string v2, "account_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const-string v1, "sourceid"

    const-string v2, "sourceid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const-string v1, "version"

    const-string v2, "version"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-string v1, "created"

    const-string v2, "created"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const-string v1, "modified"

    const-string v2, "modified"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string v1, "dirty"

    const-string v2, "dirty"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string v1, "sync1"

    const-string v2, "sync1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string v1, "sync2"

    const-string v2, "sync2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string v1, "sync3"

    const-string v2, "sync3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string v1, "sync4"

    const-string v2, "sync4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string v1, "sync5"

    const-string v2, "sync5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string v1, "parent_source"

    const-string v2, "(SELECT sourceid FROM bookmarks A WHERE A._id=bookmarks.parent) AS parent_source"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string v1, "insert_after_source"

    const-string v2, "(SELECT sourceid FROM bookmarks A WHERE A._id=bookmarks.insert_after) AS insert_after_source"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Lcom/android/browser/provider/BrowserProvider2;->OTHER_BOOKMARKS_PROJECTION_MAP:Ljava/util/HashMap;

    sget-object v1, Lcom/android/browser/provider/BrowserProvider2;->BOOKMARKS_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 243
    sget-object v0, Lcom/android/browser/provider/BrowserProvider2;->OTHER_BOOKMARKS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "position"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v3, 0x7fffffffffffffffL

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "position"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Lcom/android/browser/provider/BrowserProvider2;->HISTORY_PROJECTION_MAP:Ljava/util/HashMap;

    .line 248
    const-string v1, "_id"

    const-string v2, "history"

    const-string v3, "_id"

    invoke-static {v2, v3}, Lcom/android/browser/provider/BrowserProvider2;->qualifyColumn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string v1, "title"

    const-string v2, "title"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string v1, "url"

    const-string v2, "url"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string v1, "favicon"

    const-string v2, "favicon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string v1, "thumbnail"

    const-string v2, "thumbnail"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string v1, "touch_icon"

    const-string v2, "touch_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string v1, "created"

    const-string v2, "created"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string v1, "date"

    const-string v2, "date"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string v1, "visits"

    const-string v2, "visits"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string v1, "user_entered"

    const-string v2, "user_entered"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lcom/android/browser/provider/BrowserProvider2;->SYNC_STATE_PROJECTION_MAP:Ljava/util/HashMap;

    .line 261
    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string v1, "account_name"

    const-string v2, "account_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v1, "account_type"

    const-string v2, "account_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const-string v1, "data"

    const-string v2, "data"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/android/browser/provider/BrowserProvider2;->IMAGES_PROJECTION_MAP:Ljava/util/HashMap;

    .line 268
    const-string v1, "url_key"

    const-string v2, "url_key"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const-string v1, "favicon"

    const-string v2, "favicon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const-string v1, "thumbnail"

    const-string v2, "thumbnail"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    const-string v1, "touch_icon"

    const-string v2, "touch_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v0, Lcom/android/browser/provider/BrowserProvider2;->COMBINED_HISTORY_PROJECTION_MAP:Ljava/util/HashMap;

    .line 275
    const-string v1, "_id"

    const-string v2, "_id"

    invoke-static {v2}, Lcom/android/browser/provider/BrowserProvider2;->bookmarkOrHistoryColumn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string v1, "title"

    const-string v2, "title"

    invoke-static {v2}, Lcom/android/browser/provider/BrowserProvider2;->bookmarkOrHistoryColumn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const-string v1, "url"

    const-string v2, "history"

    const-string v3, "url"

    invoke-static {v2, v3}, Lcom/android/browser/provider/BrowserProvider2;->qualifyColumn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string v1, "created"

    const-string v2, "history"

    const-string v3, "created"

    invoke-static {v2, v3}, Lcom/android/browser/provider/BrowserProvider2;->qualifyColumn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string v1, "date"

    const-string v2, "date"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    const-string v1, "bookmark"

    const-string v2, "CASE WHEN bookmarks._id IS NOT NULL THEN 1 ELSE 0 END AS bookmark"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const-string v1, "visits"

    const-string v2, "visits"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string v1, "favicon"

    const-string v2, "favicon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string v1, "thumbnail"

    const-string v2, "thumbnail"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string v1, "touch_icon"

    const-string v2, "touch_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string v1, "user_entered"

    const-string v2, "NULL AS user_entered"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v0, Lcom/android/browser/provider/BrowserProvider2;->COMBINED_BOOKMARK_PROJECTION_MAP:Ljava/util/HashMap;

    .line 291
    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const-string v1, "title"

    const-string v2, "title"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string v1, "url"

    const-string v2, "url"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const-string v1, "created"

    const-string v2, "created"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string v1, "date"

    const-string v2, "NULL AS date"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string v1, "bookmark"

    const-string v2, "1 AS bookmark"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const-string v1, "visits"

    const-string v2, "0 AS visits"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const-string v1, "favicon"

    const-string v2, "favicon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string v1, "thumbnail"

    const-string v2, "thumbnail"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-string v1, "touch_icon"

    const-string v2, "touch_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const-string v1, "user_entered"

    const-string v2, "NULL AS user_entered"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Lcom/android/browser/provider/BrowserProvider2;->SEARCHES_PROJECTION_MAP:Ljava/util/HashMap;

    .line 305
    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string v1, "search"

    const-string v2, "search"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const-string v1, "date"

    const-string v2, "date"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v0, Lcom/android/browser/provider/BrowserProvider2;->SETTINGS_PROJECTION_MAP:Ljava/util/HashMap;

    .line 311
    const-string v1, "key"

    const-string v2, "key"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    const-string v1, "value"

    const-string v2, "value"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/browser/provider/SQLiteContentProvider;-><init>()V

    .line 325
    new-instance v0, Lcom/android/common/content/SyncStateContentProviderHelper;

    invoke-direct {v0}, Lcom/android/common/content/SyncStateContentProviderHelper;-><init>()V

    iput-object v0, p0, Lcom/android/browser/provider/BrowserProvider2;->mSyncHelper:Lcom/android/common/content/SyncStateContentProviderHelper;

    .line 327
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/provider/BrowserProvider2;->mWidgetObserver:Landroid/database/ContentObserver;

    .line 1684
    return-void
.end method

.method static final bookmarkOrHistoryColumn(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "column"

    .prologue
    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CASE WHEN bookmarks."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IS NOT NULL THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "bookmarks."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ELSE history."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " END AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createCombinedQuery(Landroid/net/Uri;[Ljava/lang/String;Landroid/database/sqlite/SQLiteQueryBuilder;)[Ljava/lang/String;
    .locals 24
    .parameter "uri"
    .parameter "projection"
    .parameter "qb"

    .prologue
    .line 924
    const/4 v15, 0x0

    .line 925
    .local v15, args:[Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    move-object/from16 v0, v22

    move v1, v5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 926
    .local v22, whereBuilder:Ljava/lang/StringBuilder;
    const-string v5, "deleted"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 927
    const-string v5, " = 0"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/browser/provider/BrowserProvider2;->getSelectionWithAccounts(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v23

    .line 930
    .local v23, withAccount:[Ljava/lang/Object;
    const/4 v5, 0x0

    aget-object v19, v23, v5

    check-cast v19, Ljava/lang/String;

    .line 931
    .local v19, selection:Ljava/lang/String;
    const/4 v5, 0x1

    aget-object p0, v23, v5

    .end local p0
    check-cast p0, [Ljava/lang/String;

    move-object/from16 v0, p0

    check-cast v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    .line 932
    .local v20, selectionArgs:[Ljava/lang/String;
    if-eqz v19, :cond_0

    .line 933
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 934
    if-eqz v20, :cond_0

    .line 936
    move-object/from16 v0, v20

    array-length v0, v0

    move v5, v0

    mul-int/lit8 v5, v5, 0x2

    new-array v15, v5, [Ljava/lang/String;

    .line 937
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v20

    array-length v0, v0

    move v7, v0

    move-object/from16 v0, v20

    move v1, v5

    move-object v2, v15

    move v3, v6

    move v4, v7

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 938
    const/4 v5, 0x0

    move-object/from16 v0, v20

    array-length v0, v0

    move v6, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move v7, v0

    move-object/from16 v0, v20

    move v1, v5

    move-object v2, v15

    move v3, v6

    move v4, v7

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 942
    :cond_0
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 944
    .local v7, where:Ljava/lang/String;
    const-string v5, "bookmarks"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 945
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p3

    invoke-virtual/range {v5 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 947
    .local v21, subQuery:Ljava/lang/String;
    const-string v5, "history LEFT OUTER JOIN (%s) bookmarks ON history.url = bookmarks.url LEFT OUTER JOIN images ON history.url = images.url_key"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v21, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 948
    sget-object v5, Lcom/android/browser/provider/BrowserProvider2;->COMBINED_HISTORY_PROJECTION_MAP:Ljava/util/HashMap;

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 949
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v8, p3

    invoke-virtual/range {v8 .. v14}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 952
    .local v17, historySubQuery:Ljava/lang/String;
    const-string v5, "bookmarks LEFT OUTER JOIN images ON bookmarks.url = images.url_key"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 953
    sget-object v5, Lcom/android/browser/provider/BrowserProvider2;->COMBINED_BOOKMARK_PROJECTION_MAP:Ljava/util/HashMap;

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 954
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND %s NOT IN (SELECT %s FROM %s)"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    .end local v7           #where:Ljava/lang/String;
    const/4 v8, 0x0

    const-string v9, "url"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "url"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "history"

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 956
    .restart local v7       #where:Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p3

    invoke-virtual/range {v5 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 959
    .local v16, bookmarksSubQuery:Ljava/lang/String;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v17, v5, v6

    const/4 v6, 0x1

    aput-object v16, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p3

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .end local v7           #where:Ljava/lang/String;
    move-result-object v18

    .line 962
    .local v18, query:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 963
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 964
    return-object v15
.end method

.method private doSuggestQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 16
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "limit"

    .prologue
    .line 881
    const/4 v2, 0x0

    aget-object v2, p2, v2

    if-nez v2, :cond_0

    .line 882
    const/4 v2, 0x0

    .line 919
    :goto_0
    return-object v2

    .line 884
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget-object v3, p2, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 885
    .local v14, like:Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, p2, v2

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    aget-object v2, p2, v2

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 887
    :cond_1
    const/4 v2, 0x0

    aput-object v14, p2, v2

    .line 899
    :goto_1
    const-string v2, "deleted=0 AND folder=0"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 902
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/provider/BrowserProvider2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 903
    .local v15, prefs:Landroid/content/SharedPreferences;
    const-string v2, "acct_type"

    const/4 v3, 0x0

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 904
    .local v12, accountType:Ljava/lang/String;
    const-string v2, "acct_name"

    const/4 v3, 0x0

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 905
    .local v11, accountName:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 906
    const-string v2, "account_type=? AND account_name=? "

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 908
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v12, v2, v3

    const/4 v3, 0x1

    aput-object v11, v2, v3

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 915
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/provider/BrowserProvider2;->mOpenHelper:Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "bookmarks"

    sget-object v4, Lcom/android/browser/provider/BrowserProvider2;->SUGGEST_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "folder DESC, position ASC, _id ASC"

    const/4 v10, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 919
    .local v13, c:Landroid/database/Cursor;
    new-instance v2, Lcom/android/browser/provider/BrowserProvider2$SuggestionsCursor;

    invoke-direct {v2, v13}, Lcom/android/browser/provider/BrowserProvider2$SuggestionsCursor;-><init>(Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 889
    .end local v11           #accountName:Ljava/lang/String;
    .end local v12           #accountType:Ljava/lang/String;
    .end local v13           #c:Landroid/database/Cursor;
    .end local v15           #prefs:Landroid/content/SharedPreferences;
    :cond_2
    const/4 v2, 0x5

    move v0, v2

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 p2, v0

    .line 890
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v2

    .line 891
    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://www."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v2

    .line 892
    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v2

    .line 893
    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://www."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v2

    .line 895
    const/4 v2, 0x4

    aput-object v14, p2, v2

    .line 896
    const-string p1, "url LIKE ? OR url LIKE ? OR url LIKE ? OR url LIKE ? OR title LIKE ?"

    goto/16 :goto_1

    .line 911
    .restart local v11       #accountName:Ljava/lang/String;
    .restart local v12       #accountType:Ljava/lang/String;
    .restart local v15       #prefs:Landroid/content/SharedPreferences;
    :cond_3
    const-string v2, "account_type IS NULL AND account_name IS NULL "

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2
.end method

.method private filterSearchClient(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "url"

    .prologue
    const/4 v3, 0x0

    .line 1273
    const-string v2, "client="

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1274
    .local v1, index:I
    if-lez v1, :cond_0

    const-string v2, ".google."

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1275
    const/16 v2, 0x26

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 1276
    .local v0, end:I
    if-lez v0, :cond_1

    .line 1277
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1284
    .end local v0           #end:I
    :cond_0
    :goto_0
    return-object p1

    .line 1281
    .restart local v0       #end:I
    :cond_1
    const/4 v2, 0x1

    sub-int v2, v1, v2

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private filterSearchClient([Ljava/lang/String;)V
    .locals 2
    .parameter "selectionArgs"

    .prologue
    .line 1262
    if-eqz p1, :cond_0

    .line 1263
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 1264
    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lcom/android/browser/provider/BrowserProvider2;->filterSearchClient(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 1263
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1267
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method private insertSearchesInTransaction(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 12
    .parameter "db"
    .parameter "values"

    .prologue
    .line 1291
    const-string v0, "search"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1292
    .local v11, search:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1293
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include the SEARCH field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1295
    :cond_0
    const/4 v8, 0x0

    .line 1297
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v1, "searches"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v3, "search=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v11, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1299
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1300
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1301
    .local v9, id:J
    const-string v0, "searches"

    const-string v1, "_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1308
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    move-wide v0, v9

    .end local v9           #id:J
    :cond_2
    :goto_0
    return-wide v0

    .line 1305
    :cond_3
    :try_start_1
    const-string v0, "searches"

    const-string v1, "search"

    invoke-virtual {p1, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 1308
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private insertSettingsInTransaction(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 12
    .parameter "db"
    .parameter "values"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1316
    const-string v0, "key"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1317
    .local v11, key:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1318
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include the KEY field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1320
    :cond_0
    new-array v4, v2, [Ljava/lang/String;

    aput-object v11, v4, v1

    .line 1321
    .local v4, keyArray:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 1323
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v1, "settings"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "key"

    aput-object v3, v2, v0

    const-string v3, "key=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1325
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1326
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1327
    .local v9, id:J
    const-string v0, "settings"

    const-string v1, "key=?"

    invoke-virtual {p1, v0, p2, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1333
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    move-wide v0, v9

    .end local v9           #id:J
    :cond_2
    :goto_0
    return-wide v0

    .line 1330
    :cond_3
    :try_start_1
    const-string v0, "settings"

    const-string v1, "value"

    invoke-virtual {p1, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 1333
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private isValidParent(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 11
    .parameter "accountType"
    .parameter "accountName"
    .parameter "parentId"

    .prologue
    const/4 v3, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1239
    const-wide/16 v4, 0x0

    cmp-long v0, p3, v4

    if-gtz v0, :cond_0

    move v0, v9

    .line 1257
    :goto_0
    return v0

    .line 1242
    :cond_0
    sget-object v0, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1243
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "account_name"

    aput-object v0, v2, v9

    const-string v0, "account_type"

    aput-object v0, v2, v10

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/browser/provider/BrowserProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1247
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1248
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1249
    .local v7, parentName:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1250
    .local v8, parentType:Ljava/lang/String;
    invoke-static {p2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 1257
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v10

    goto :goto_0

    .end local v7           #parentName:Ljava/lang/String;
    .end local v8           #parentType:Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v9

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method static final qualifyColumn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "table"
    .parameter "column"

    .prologue
    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private shouldUpdateImages(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 17
    .parameter "db"
    .parameter "url"
    .parameter "values"

    .prologue
    .line 1462
    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "favicon"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "thumbnail"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "touch_icon"

    aput-object v3, v4, v2

    .line 1467
    .local v4, projection:[Ljava/lang/String;
    const-string v3, "images"

    const-string v5, "url_key=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1469
    .local v13, cursor:Landroid/database/Cursor;
    const-string v2, "favicon"

    move-object/from16 v0, p3

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v14

    .line 1470
    .local v14, nfavicon:[B
    const-string v2, "thumbnail"

    move-object/from16 v0, p3

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v15

    .line 1471
    .local v15, nthumb:[B
    const-string v2, "touch_icon"

    move-object/from16 v0, p3

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v16

    .line 1472
    .local v16, ntouch:[B
    const/4 v10, 0x0

    .line 1473
    .local v10, cfavicon:[B
    const/4 v11, 0x0

    .line 1474
    .local v11, cthumb:[B
    const/4 v12, 0x0

    .line 1476
    .local v12, ctouch:[B
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-gtz v2, :cond_2

    .line 1477
    if-nez v14, :cond_0

    if-nez v15, :cond_0

    if-eqz v16, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 1500
    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1502
    :goto_1
    return v2

    .line 1477
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1479
    :cond_2
    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1480
    if-eqz v14, :cond_3

    .line 1481
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    .line 1482
    invoke-static {v14, v10}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    .line 1483
    const/4 v2, 0x1

    .line 1500
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1486
    :cond_3
    if-eqz v15, :cond_4

    .line 1487
    const/4 v2, 0x1

    :try_start_2
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v11

    .line 1488
    invoke-static {v15, v11}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-nez v2, :cond_4

    .line 1489
    const/4 v2, 0x1

    .line 1500
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1492
    :cond_4
    if-eqz v16, :cond_2

    .line 1493
    const/4 v2, 0x2

    :try_start_3
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    .line 1494
    move-object/from16 v0, v16

    move-object v1, v12

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 1495
    const/4 v2, 0x1

    .line 1500
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_5
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1502
    const/4 v2, 0x0

    goto :goto_1

    .line 1500
    :catchall_0
    move-exception v2

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v2
.end method


# virtual methods
.method appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1617
    const-string v0, "account_name"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1618
    const-string v1, "account_type"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1620
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v2, v3

    .line 1621
    if-eqz v2, :cond_0

    .line 1623
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must specify both or neither of ACCOUNT_NAME and ACCOUNT_TYPE for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1629
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    .line 1630
    :goto_0
    if-eqz v2, :cond_3

    .line 1631
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "account_name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "account_type"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1635
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1636
    const-string v0, " AND ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1637
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1638
    const/16 v0, 0x29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1640
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1642
    :goto_1
    return-object v0

    .line 1629
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    move-object v0, p2

    .line 1642
    goto :goto_1
.end method

.method deleteBookmarks(Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 5
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 970
    iget-object v2, p0, Lcom/android/browser/provider/BrowserProvider2;->mOpenHelper:Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;

    invoke-virtual {v2}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 971
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p3, :cond_0

    .line 972
    const-string v2, "bookmarks"

    invoke-virtual {v0, v2, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 977
    :goto_0
    return v2

    .line 974
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 975
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 976
    const-string v2, "deleted"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 977
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/browser/provider/BrowserProvider2;->updateBookmarksInTransaction(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v2

    goto :goto_0
.end method

.method public deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 22
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 984
    sget-object v7, Lcom/android/browser/provider/BrowserProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object v0, v7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v18

    .line 985
    .local v18, match:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/provider/BrowserProvider2;->mOpenHelper:Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 986
    .local v5, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v14, 0x0

    .line 987
    .local v14, deleted:I
    sparse-switch v18, :sswitch_data_0

    .line 1084
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown delete URI "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 989
    :sswitch_0
    const-string v7, "bookmarks._id=?"

    move-object/from16 v0, p2

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 991
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    move-object/from16 v0, p3

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 997
    :sswitch_1
    invoke-virtual/range {p0 .. p3}, Lcom/android/browser/provider/BrowserProvider2;->getSelectionWithAccounts(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v21

    .line 998
    .local v21, withAccount:[Ljava/lang/Object;
    const/4 v7, 0x0

    aget-object p2, v21, v7

    .end local p2
    check-cast p2, Ljava/lang/String;

    .line 999
    .restart local p2
    const/4 v7, 0x1

    aget-object p3, v21, v7

    .end local p3
    check-cast p3, [Ljava/lang/String;

    check-cast p3, [Ljava/lang/String;

    .line 1000
    .restart local p3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/browser/provider/BrowserProvider2;->deleteBookmarks(Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v14

    .line 1001
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/provider/BrowserProvider2;->pruneImages()V

    .line 1002
    if-lez v14, :cond_0

    .line 1003
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/provider/BrowserProvider2;->refreshWidgets()V

    .line 1087
    .end local v21           #withAccount:[Ljava/lang/Object;
    :cond_0
    :goto_0
    if-lez v14, :cond_1

    .line 1088
    invoke-virtual/range {p0 .. p1}, Lcom/android/browser/provider/BrowserProvider2;->postNotifyUri(Landroid/net/Uri;)V

    .line 1089
    sget-object v7, Lcom/android/browser/provider/BrowserProvider2;->LEGACY_AUTHORITY_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/android/browser/provider/BrowserProvider2;->postNotifyUri(Landroid/net/Uri;)V

    .line 1091
    :cond_1
    return v14

    .line 1009
    :sswitch_2
    const-string v7, "history._id=?"

    move-object/from16 v0, p2

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1010
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    move-object/from16 v0, p3

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 1015
    :sswitch_3
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/browser/provider/BrowserProvider2;->filterSearchClient([Ljava/lang/String;)V

    .line 1016
    const-string v7, "history"

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 1017
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/provider/BrowserProvider2;->pruneImages()V

    goto :goto_0

    .line 1022
    :sswitch_4
    const-string v7, "searches._id=?"

    move-object/from16 v0, p2

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1023
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    move-object/from16 v0, p3

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 1028
    :sswitch_5
    const-string v7, "searches"

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 1029
    goto :goto_0

    .line 1033
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/provider/BrowserProvider2;->mSyncHelper:Lcom/android/common/content/SyncStateContentProviderHelper;

    move-object v7, v0

    move-object v0, v7

    move-object v1, v5

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/common/content/SyncStateContentProviderHelper;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 1034
    goto :goto_0

    .line 1037
    :sswitch_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez p2, :cond_2

    const-string v8, ""

    :goto_1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1040
    .local v19, selectionWithId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/provider/BrowserProvider2;->mSyncHelper:Lcom/android/common/content/SyncStateContentProviderHelper;

    move-object v7, v0

    move-object v0, v7

    move-object v1, v5

    move-object/from16 v2, v19

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/common/content/SyncStateContentProviderHelper;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 1041
    goto/16 :goto_0

    .line 1037
    .end local v19           #selectionWithId:Ljava/lang/String;
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " AND ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 1044
    :sswitch_8
    const-string v7, "_id = CAST(? AS INTEGER)"

    move-object/from16 v0, p2

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1046
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    move-object/from16 v0, p3

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 1051
    :sswitch_9
    const/4 v7, 0x3

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "bookmark"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "url"

    aput-object v8, v6, v7

    .line 1053
    .local v6, projection:[Ljava/lang/String;
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1054
    .local v4, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/provider/BrowserProvider2;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/browser/BookmarkUtils;->addAccountInfo(Landroid/content/Context;Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 1056
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v6

    move-object v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/browser/provider/BrowserProvider2;->createCombinedQuery(Landroid/net/Uri;[Ljava/lang/String;Landroid/database/sqlite/SQLiteQueryBuilder;)[Ljava/lang/String;

    move-result-object v12

    .line 1057
    .local v12, args:[Ljava/lang/String;
    if-nez p3, :cond_3

    .line 1058
    move-object/from16 p3, v12

    .line 1063
    :goto_2
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1065
    .local v13, c:Landroid/database/Cursor;
    :goto_3
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1066
    const/4 v7, 0x0

    invoke-interface {v13, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 1067
    .local v15, id:J
    const/4 v7, 0x1

    invoke-interface {v13, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    move/from16 v17, v7

    .line 1068
    .local v17, isBookmark:Z
    :goto_4
    const/4 v7, 0x2

    invoke-interface {v13, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 1069
    .local v20, url:Ljava/lang/String;
    if-eqz v17, :cond_5

    .line 1070
    const-string v7, "_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/browser/provider/BrowserProvider2;->deleteBookmarks(Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v7

    add-int/2addr v14, v7

    .line 1073
    const-string v7, "history"

    const-string v8, "url=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v20, v9, v10

    invoke-virtual {v5, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_3

    .line 1060
    .end local v13           #c:Landroid/database/Cursor;
    .end local v15           #id:J
    .end local v17           #isBookmark:Z
    .end local v20           #url:Ljava/lang/String;
    :cond_3
    move-object v0, v12

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    .line 1067
    .restart local v13       #c:Landroid/database/Cursor;
    .restart local v15       #id:J
    :cond_4
    const/4 v7, 0x0

    move/from16 v17, v7

    goto :goto_4

    .line 1076
    .restart local v17       #isBookmark:Z
    .restart local v20       #url:Ljava/lang/String;
    :cond_5
    const-string v7, "history"

    const-string v8, "_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v5, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    add-int/2addr v14, v7

    goto :goto_3

    .line 987
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_1
        0x3e9 -> :sswitch_0
        0x7d0 -> :sswitch_3
        0x7d1 -> :sswitch_2
        0xbb8 -> :sswitch_5
        0xbb9 -> :sswitch_4
        0xfa0 -> :sswitch_6
        0xfa1 -> :sswitch_7
        0x2328 -> :sswitch_9
        0x2329 -> :sswitch_8
    .end sparse-switch
.end method

.method extractImageValues(Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 3
    .parameter "values"
    .parameter "url"

    .prologue
    .line 1647
    const/4 v0, 0x0

    .line 1649
    .local v0, imageValues:Landroid/content/ContentValues;
    const-string v1, "favicon"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1650
    new-instance v0, Landroid/content/ContentValues;

    .end local v0           #imageValues:Landroid/content/ContentValues;
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1651
    .restart local v0       #imageValues:Landroid/content/ContentValues;
    const-string v1, "favicon"

    const-string v2, "favicon"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1652
    const-string v1, "favicon"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1656
    :cond_0
    const-string v1, "thumbnail"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1657
    if-nez v0, :cond_1

    .line 1658
    new-instance v0, Landroid/content/ContentValues;

    .end local v0           #imageValues:Landroid/content/ContentValues;
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1660
    .restart local v0       #imageValues:Landroid/content/ContentValues;
    :cond_1
    const-string v1, "thumbnail"

    const-string v2, "thumbnail"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1661
    const-string v1, "thumbnail"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1665
    :cond_2
    const-string v1, "touch_icon"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1666
    if-nez v0, :cond_3

    .line 1667
    new-instance v0, Landroid/content/ContentValues;

    .end local v0           #imageValues:Landroid/content/ContentValues;
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1669
    .restart local v0       #imageValues:Landroid/content/ContentValues;
    :cond_3
    const-string v1, "touch_icon"

    const-string v2, "touch_icon"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1670
    const-string v1, "touch_icon"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1673
    :cond_4
    if-eqz v0, :cond_5

    .line 1674
    const-string v1, "url_key"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    :cond_5
    return-object v0
.end method

.method public getDatabaseHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 1
    .parameter "context"

    .prologue
    .line 569
    monitor-enter p0

    .line 570
    :try_start_0
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider2;->mOpenHelper:Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;

    if-nez v0, :cond_0

    .line 571
    new-instance v0, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;

    invoke-direct {v0, p0, p1}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;-><init>(Lcom/android/browser/provider/BrowserProvider2;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/browser/provider/BrowserProvider2;->mOpenHelper:Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider2;->mOpenHelper:Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;

    monitor-exit p0

    return-object v0

    .line 574
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getSelectionWithAccounts(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/Object;
    .locals 7
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 625
    const-string v3, "acct_type"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 626
    .local v1, accountType:Ljava/lang/String;
    const-string v3, "acct_name"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 627
    .local v0, accountName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 628
    .local v2, hasAccounts:Z
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 629
    invoke-virtual {p0, v1}, Lcom/android/browser/provider/BrowserProvider2;->isNullAccount(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/browser/provider/BrowserProvider2;->isNullAccount(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 630
    const-string v3, "account_type=? AND account_name=? "

    invoke-static {p2, v3}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 632
    new-array v3, v6, [Ljava/lang/String;

    aput-object v1, v3, v4

    aput-object v0, v3, v5

    invoke-static {p3, v3}, Landroid/database/DatabaseUtils;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 634
    const/4 v2, 0x1

    .line 641
    :cond_0
    :goto_0
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v4

    aput-object p3, v3, v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    return-object v3

    .line 636
    :cond_1
    const-string v3, "account_name IS NULL AND account_type IS NULL"

    invoke-static {p2, v3}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .parameter "uri"

    .prologue
    .line 597
    sget-object v1, Lcom/android/browser/provider/BrowserProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 598
    .local v0, match:I
    sparse-switch v0, :sswitch_data_0

    .line 614
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 601
    :sswitch_0
    const-string v1, "vnd.android.cursor.dir/bookmark"

    goto :goto_0

    .line 604
    :sswitch_1
    const-string v1, "vnd.android.cursor.item/bookmark"

    goto :goto_0

    .line 606
    :sswitch_2
    const-string v1, "vnd.android.cursor.dir/browser-history"

    goto :goto_0

    .line 608
    :sswitch_3
    const-string v1, "vnd.android.cursor.item/browser-history"

    goto :goto_0

    .line 610
    :sswitch_4
    const-string v1, "vnd.android.cursor.dir/searches"

    goto :goto_0

    .line 612
    :sswitch_5
    const-string v1, "vnd.android.cursor.item/searches"

    goto :goto_0

    .line 598
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_1
        0x7d0 -> :sswitch_2
        0x7d1 -> :sswitch_3
        0xbb8 -> :sswitch_4
        0xbb9 -> :sswitch_5
        0x2328 -> :sswitch_0
        0x2329 -> :sswitch_1
    .end sparse-switch
.end method

.method getUrlCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 1506
    new-array v2, v1, [Ljava/lang/String;

    const-string v0, "COUNT(*)"

    aput-object v0, v2, v8

    const-string v3, "url = ?"

    new-array v4, v1, [Ljava/lang/String;

    aput-object p3, v4, v8

    move-object v0, p1

    move-object v1, p2

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1510
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1511
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1515
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_0
    move v1, v8

    goto :goto_0
.end method

.method public insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;
    .locals 26
    .parameter "uri"
    .parameter "values"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 1111
    sget-object v22, Lcom/android/browser/provider/BrowserProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v15

    .line 1112
    .local v15, match:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/provider/BrowserProvider2;->mOpenHelper:Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 1113
    .local v9, db:Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v11, -0x1

    .line 1114
    .local v11, id:J
    const/16 v22, 0x2328

    move v0, v15

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 1116
    const-string v22, "bookmark"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 1117
    .local v7, bookmark:Ljava/lang/Integer;
    const-string v22, "bookmark"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1118
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v22

    if-nez v22, :cond_2

    .line 1119
    :cond_0
    const/16 v15, 0x7d0

    .line 1136
    .end local v7           #bookmark:Ljava/lang/Integer;
    :cond_1
    :goto_0
    sparse-switch v15, :sswitch_data_0

    .line 1224
    new-instance v22, Ljava/lang/UnsupportedOperationException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unknown insert URI "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 1121
    .restart local v7       #bookmark:Ljava/lang/Integer;
    :cond_2
    const/16 v15, 0x3e8

    .line 1122
    const-string v22, "date"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1123
    const-string v22, "visits"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1124
    const-string v22, "user_entered"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1125
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/provider/BrowserProvider2;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 1127
    .local v20, prefs:Landroid/content/SharedPreferences;
    const-string v22, "acct_type"

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1129
    .local v6, accountType:Ljava/lang/String;
    const-string v22, "acct_name"

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1131
    .local v5, accountName:Ljava/lang/String;
    const-string v22, "account_type"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    const-string v22, "account_name"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    const-string v22, "folder"

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 1139
    .end local v5           #accountName:Ljava/lang/String;
    .end local v6           #accountType:Ljava/lang/String;
    .end local v7           #bookmark:Ljava/lang/Integer;
    .end local v20           #prefs:Landroid/content/SharedPreferences;
    :sswitch_0
    if-nez p3, :cond_4

    .line 1140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 1141
    .local v16, now:J
    const-string v22, "created"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1142
    const-string v22, "modified"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1143
    const-string v22, "dirty"

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1145
    const-string v22, "account_type"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1147
    .restart local v6       #accountType:Ljava/lang/String;
    const-string v22, "account_name"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1149
    .restart local v5       #accountName:Ljava/lang/String;
    const-string v22, "parent"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    .line 1150
    .local v10, hasParent:Z
    if-eqz v10, :cond_3

    .line 1152
    const-string v22, "parent"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 1153
    .local v18, parentId:J
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v5

    move-wide/from16 v3, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/browser/provider/BrowserProvider2;->isValidParent(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v10

    .line 1158
    .end local v18           #parentId:J
    :cond_3
    if-nez v10, :cond_4

    .line 1159
    const-string v22, "parent"

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/provider/BrowserProvider2;->queryDefaultFolderId(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1165
    .end local v5           #accountName:Ljava/lang/String;
    .end local v6           #accountType:Ljava/lang/String;
    .end local v10           #hasParent:Z
    .end local v16           #now:J
    :cond_4
    const-string v22, "position"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_5

    .line 1166
    const-string v22, "position"

    const-wide/high16 v23, -0x8000

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    :cond_5
    const-string v22, "url"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1171
    .local v21, url:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/provider/BrowserProvider2;->extractImageValues(Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v13

    .line 1172
    .local v13, imageValues:Landroid/content/ContentValues;
    const-string v22, "folder"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v14

    .line 1173
    .local v14, isFolder:Ljava/lang/Boolean;
    if-eqz v14, :cond_6

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    if-nez v22, :cond_7

    :cond_6
    if-eqz v13, :cond_7

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_7

    .line 1175
    const-string v22, "images"

    const-string v23, "url_key=?"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v21, v24, v25

    move-object v0, v9

    move-object/from16 v1, v22

    move-object v2, v13

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 1177
    .local v8, count:I
    if-nez v8, :cond_7

    .line 1178
    const-string v22, "images"

    const-string v23, "favicon"

    move-object v0, v9

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object v3, v13

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1182
    .end local v8           #count:I
    :cond_7
    const-string v22, "bookmarks"

    const-string v23, "dirty"

    move-object v0, v9

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v11

    .line 1183
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/provider/BrowserProvider2;->refreshWidgets()V

    .line 1228
    .end local v13           #imageValues:Landroid/content/ContentValues;
    .end local v14           #isFolder:Ljava/lang/Boolean;
    .end local v21           #url:Ljava/lang/String;
    :goto_1
    const-wide/16 v22, 0x0

    cmp-long v22, v11, v22

    if-ltz v22, :cond_a

    .line 1229
    invoke-virtual/range {p0 .. p1}, Lcom/android/browser/provider/BrowserProvider2;->postNotifyUri(Landroid/net/Uri;)V

    .line 1230
    sget-object v22, Lcom/android/browser/provider/BrowserProvider2;->LEGACY_AUTHORITY_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/browser/provider/BrowserProvider2;->postNotifyUri(Landroid/net/Uri;)V

    .line 1231
    move-object/from16 v0, p1

    move-wide v1, v11

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v22

    .line 1233
    :goto_2
    return-object v22

    .line 1189
    :sswitch_1
    const-string v22, "created"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_8

    .line 1190
    const-string v22, "created"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1192
    :cond_8
    const-string v22, "url"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1193
    .restart local v21       #url:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/browser/provider/BrowserProvider2;->filterSearchClient(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1194
    const-string v22, "url"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    const-string v22, "url"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/provider/BrowserProvider2;->extractImageValues(Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v13

    .line 1199
    .restart local v13       #imageValues:Landroid/content/ContentValues;
    if-eqz v13, :cond_9

    .line 1200
    const-string v22, "images"

    const-string v23, "favicon"

    move-object v0, v9

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object v3, v13

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1203
    :cond_9
    const-string v22, "history"

    const-string v23, "visits"

    move-object v0, v9

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v11

    .line 1204
    goto/16 :goto_1

    .line 1208
    .end local v13           #imageValues:Landroid/content/ContentValues;
    .end local v21           #url:Ljava/lang/String;
    :sswitch_2
    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/browser/provider/BrowserProvider2;->insertSearchesInTransaction(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v11

    .line 1209
    goto/16 :goto_1

    .line 1213
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/provider/BrowserProvider2;->mSyncHelper:Lcom/android/common/content/SyncStateContentProviderHelper;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object v1, v9

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/common/content/SyncStateContentProviderHelper;->insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v11

    .line 1214
    goto/16 :goto_1

    .line 1218
    :sswitch_4
    const-wide/16 v11, 0x0

    .line 1219
    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/browser/provider/BrowserProvider2;->insertSettingsInTransaction(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    goto/16 :goto_1

    .line 1233
    :cond_a
    const/16 v22, 0x0

    goto/16 :goto_2

    .line 1136
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x7d0 -> :sswitch_1
        0xbb8 -> :sswitch_2
        0xfa0 -> :sswitch_3
        0x1f40 -> :sswitch_4
    .end sparse-switch
.end method

.method public isCallerSyncAdapter(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 579
    const-string v0, "caller_is_syncadapter"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isNullAccount(Ljava/lang/String;)Z
    .locals 2
    .parameter "account"

    .prologue
    const/4 v1, 0x1

    .line 618
    if-nez p1, :cond_0

    move v0, v1

    .line 620
    :goto_0
    return v0

    .line 619
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 620
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method pruneImages()V
    .locals 4

    .prologue
    .line 1680
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider2;->mOpenHelper:Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1681
    const-string v1, "images"

    const-string v2, "url_key NOT IN (SELECT url FROM bookmarks WHERE url IS NOT NULL AND deleted == 0) AND url_key NOT IN (SELECT url FROM history WHERE url IS NOT NULL)"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1682
    return-void
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 34
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/provider/BrowserProvider2;->mOpenHelper:Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    .line 648
    .local v12, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v5, Lcom/android/browser/provider/BrowserProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v29

    .line 649
    .local v29, match:I
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 650
    .local v4, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v5, "limit"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 651
    .local v19, limit:Ljava/lang/String;
    sparse-switch v29, :sswitch_data_0

    .line 870
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URL "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 653
    :sswitch_0
    const-string v5, "bookmarks"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 654
    sget-object v5, Lcom/android/browser/provider/BrowserProvider2;->ACCOUNTS_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 655
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 656
    const-string v5, "account_name IS NOT NULL"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 874
    :goto_0
    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v11, v4

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v18, p5

    invoke-virtual/range {v11 .. v19}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 876
    .local v25, cursor:Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/provider/BrowserProvider2;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/BrowserContract;->AUTHORITY_URI:Landroid/net/Uri;

    move-object/from16 v0, v25

    move-object v1, v5

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    move-object/from16 v5, v25

    .line 877
    .end local v12           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v25           #cursor:Landroid/database/Cursor;
    :goto_1
    return-object v5

    .line 664
    .restart local v12       #db:Landroid/database/sqlite/SQLiteDatabase;
    :sswitch_1
    const-string v5, "show_deleted"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    .line 665
    const-string v5, "deleted=0"

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 669
    :cond_0
    const/16 v5, 0x3e9

    move/from16 v0, v29

    move v1, v5

    if-ne v0, v1, :cond_3

    .line 671
    const-string v5, "bookmarks._id=?"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 673
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p4

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 683
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/browser/provider/BrowserProvider2;->getSelectionWithAccounts(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v33

    .line 684
    .local v33, withAccount:[Ljava/lang/Object;
    const/4 v5, 0x0

    aget-object p3, v33, v5

    .end local p3
    check-cast p3, Ljava/lang/String;

    .line 685
    .restart local p3
    const/4 v5, 0x1

    aget-object p4, v33, v5

    .end local p4
    check-cast p4, [Ljava/lang/String;

    check-cast p4, [Ljava/lang/String;

    .line 686
    .restart local p4
    const/4 v5, 0x2

    aget-object v5, v33, v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    .line 689
    .local v26, hasAccounts:Z
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 690
    if-eqz v26, :cond_4

    .line 691
    const-string p5, "position ASC, _id ASC"

    .line 697
    :cond_2
    :goto_3
    sget-object v5, Lcom/android/browser/provider/BrowserProvider2;->BOOKMARKS_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 698
    const-string v5, "bookmarks LEFT OUTER JOIN images ON bookmarks.url = images.url_key"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 675
    .end local v26           #hasAccounts:Z
    .end local v33           #withAccount:[Ljava/lang/Object;
    :cond_3
    const/16 v5, 0x3eb

    move/from16 v0, v29

    move v1, v5

    if-ne v0, v1, :cond_1

    .line 677
    const-string v5, "bookmarks.parent=?"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 679
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p4

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    goto :goto_2

    .line 693
    .restart local v26       #hasAccounts:Z
    .restart local v33       #withAccount:[Ljava/lang/Object;
    :cond_4
    const-string p5, "folder DESC, position ASC, _id ASC"

    goto :goto_3

    .line 704
    .end local v26           #hasAccounts:Z
    .end local v33           #withAccount:[Ljava/lang/Object;
    :sswitch_2
    const/16 v32, 0x0

    .line 705
    .local v32, useAccount:Z
    const-string v5, "acct_type"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 706
    .local v21, accountType:Ljava/lang/String;
    const-string v5, "acct_name"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 707
    .local v20, accountName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/browser/provider/BrowserProvider2;->isNullAccount(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/browser/provider/BrowserProvider2;->isNullAccount(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 708
    const/16 v32, 0x1

    .line 711
    :cond_5
    const-string v5, "bookmarks LEFT OUTER JOIN images ON bookmarks.url = images.url_key"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 715
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 716
    if-eqz v32, :cond_a

    .line 717
    const-string p5, "position ASC, _id ASC"

    .line 722
    :cond_6
    :goto_4
    if-nez v32, :cond_b

    .line 723
    sget-object v5, Lcom/android/browser/provider/BrowserProvider2;->BOOKMARKS_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 724
    const-string v6, "parent=? AND deleted=0"

    .line 725
    .local v6, where:Ljava/lang/String;
    move-object v0, v6

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 726
    const/4 v5, 0x1

    move v0, v5

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/4 v5, 0x0

    const-wide/16 v7, 0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v22, v5

    .line 727
    .local v22, args:[Ljava/lang/String;
    if-eqz p4, :cond_7

    .line 728
    move-object/from16 v0, v22

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 730
    :cond_7
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p2

    move-object/from16 v9, p5

    invoke-virtual/range {v4 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 769
    .local v31, query:Ljava/lang/String;
    :cond_8
    :goto_5
    move-object v0, v12

    move-object/from16 v1, v31

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 770
    .restart local v25       #cursor:Landroid/database/Cursor;
    if-eqz v25, :cond_9

    .line 771
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/provider/BrowserProvider2;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/BrowserContract;->AUTHORITY_URI:Landroid/net/Uri;

    .end local v6           #where:Ljava/lang/String;
    move-object/from16 v0, v25

    move-object v1, v5

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_9
    move-object/from16 v5, v25

    .line 774
    goto/16 :goto_1

    .line 719
    .end local v22           #args:[Ljava/lang/String;
    .end local v25           #cursor:Landroid/database/Cursor;
    .end local v31           #query:Ljava/lang/String;
    :cond_a
    const-string p5, "folder DESC, position ASC, _id ASC"

    goto :goto_4

    .line 732
    :cond_b
    sget-object v5, Lcom/android/browser/provider/BrowserProvider2;->BOOKMARKS_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 733
    const-string v6, "account_type=? AND account_name=? AND parent = (SELECT _id FROM bookmarks WHERE sync3=\'bookmark_bar\' AND account_type = ? AND account_name = ?) AND deleted=0"

    .line 741
    .restart local v6       #where:Ljava/lang/String;
    move-object v0, v6

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 742
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p2

    invoke-virtual/range {v4 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 744
    .local v23, bookmarksBarQuery:Ljava/lang/String;
    const/4 v5, 0x4

    move v0, v5

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/4 v5, 0x0

    aput-object v21, v22, v5

    const/4 v5, 0x1

    aput-object v20, v22, v5

    const/4 v5, 0x2

    aput-object v21, v22, v5

    const/4 v5, 0x3

    aput-object v20, v22, v5

    .line 746
    .restart local v22       #args:[Ljava/lang/String;
    if-eqz p4, :cond_c

    .line 747
    move-object/from16 v0, v22

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 750
    :cond_c
    const-string v6, "account_type=? AND account_name=? AND sync3=?"

    .line 752
    move-object v0, v6

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 753
    sget-object v5, Lcom/android/browser/provider/BrowserProvider2;->OTHER_BOOKMARKS_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 754
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p2

    invoke-virtual/range {v4 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 757
    .local v30, otherBookmarksQuery:Ljava/lang/String;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v23, v5, v7

    const/4 v7, 0x1

    aput-object v30, v5, v7

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, p5

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 761
    .restart local v31       #query:Ljava/lang/String;
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v21, v5, v7

    const/4 v7, 0x1

    aput-object v20, v5, v7

    const/4 v7, 0x2

    const-string v8, "other_bookmarks"

    aput-object v8, v5, v7

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 764
    if-eqz p4, :cond_8

    .line 765
    move-object/from16 v0, v22

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_5

    .line 778
    .end local v6           #where:Ljava/lang/String;
    .end local v20           #accountName:Ljava/lang/String;
    .end local v21           #accountType:Ljava/lang/String;
    .end local v22           #args:[Ljava/lang/String;
    .end local v23           #bookmarksBarQuery:Ljava/lang/String;
    .end local v30           #otherBookmarksQuery:Ljava/lang/String;
    .end local v31           #query:Ljava/lang/String;
    .end local v32           #useAccount:Z
    :sswitch_3
    const-string v5, "acct_name"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 779
    .restart local v20       #accountName:Ljava/lang/String;
    const-string v5, "acct_type"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 780
    .restart local v21       #accountType:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/provider/BrowserProvider2;->queryDefaultFolderId(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v27

    .line 781
    .local v27, id:J
    new-instance v24, Landroid/database/MatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v6

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 782
    .local v24, c:Landroid/database/MatrixCursor;
    invoke-virtual/range {v24 .. v24}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v5

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v5, v24

    .line 783
    goto/16 :goto_1

    .line 787
    .end local v20           #accountName:Ljava/lang/String;
    .end local v21           #accountType:Ljava/lang/String;
    .end local v24           #c:Landroid/database/MatrixCursor;
    .end local v27           #id:J
    :sswitch_4
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/browser/provider/BrowserProvider2;->doSuggestQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto/16 :goto_1

    .line 791
    :sswitch_5
    const-string v5, "history._id=?"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 792
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p4

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 797
    :sswitch_6
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/browser/provider/BrowserProvider2;->filterSearchClient([Ljava/lang/String;)V

    .line 798
    if-nez p5, :cond_d

    .line 799
    const-string p5, "date DESC"

    .line 801
    :cond_d
    sget-object v5, Lcom/android/browser/provider/BrowserProvider2;->HISTORY_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 802
    const-string v5, "history LEFT OUTER JOIN images ON history.url = images.url_key"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 807
    :sswitch_7
    const-string v5, "searches._id=?"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 808
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p4

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 813
    :sswitch_8
    const-string v5, "searches"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 814
    sget-object v5, Lcom/android/browser/provider/BrowserProvider2;->SEARCHES_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 819
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/provider/BrowserProvider2;->mSyncHelper:Lcom/android/common/content/SyncStateContentProviderHelper;

    move-object v7, v0

    move-object v8, v12

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-virtual/range {v7 .. v12}, Lcom/android/common/content/SyncStateContentProviderHelper;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v12           #db:Landroid/database/sqlite/SQLiteDatabase;
    move-result-object v5

    goto/16 :goto_1

    .line 823
    .restart local v12       #db:Landroid/database/sqlite/SQLiteDatabase;
    :sswitch_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/provider/BrowserProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 824
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p3, :cond_e

    const-string v6, ""

    :goto_6
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 827
    .local v10, selectionWithId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/provider/BrowserProvider2;->mSyncHelper:Lcom/android/common/content/SyncStateContentProviderHelper;

    move-object v7, v0

    move-object v8, v12

    move-object/from16 v9, p2

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-virtual/range {v7 .. v12}, Lcom/android/common/content/SyncStateContentProviderHelper;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v12           #db:Landroid/database/sqlite/SQLiteDatabase;
    move-result-object v5

    goto/16 :goto_1

    .line 824
    .end local v10           #selectionWithId:Ljava/lang/String;
    .restart local v12       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " AND ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    .line 831
    :sswitch_b
    const-string v5, "images"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 832
    sget-object v5, Lcom/android/browser/provider/BrowserProvider2;->IMAGES_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 838
    :sswitch_c
    const-string v5, "_id = CAST(? AS INTEGER)"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 840
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p4

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 846
    :sswitch_d
    const/16 v5, 0x2328

    move/from16 v0, v29

    move v1, v5

    if-eq v0, v1, :cond_f

    const/16 v5, 0x2329

    move/from16 v0, v29

    move v1, v5

    if-ne v0, v1, :cond_10

    :cond_f
    if-nez p2, :cond_10

    .line 848
    sget-object p2, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    .line 850
    :cond_10
    const/16 v5, 0x2328

    move/from16 v0, v29

    move v1, v5

    if-ne v0, v1, :cond_11

    .line 851
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/provider/BrowserProvider2;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/browser/BookmarkUtils;->addAccountInfo(Landroid/content/Context;Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 854
    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/browser/provider/BrowserProvider2;->createCombinedQuery(Landroid/net/Uri;[Ljava/lang/String;Landroid/database/sqlite/SQLiteQueryBuilder;)[Ljava/lang/String;

    move-result-object v22

    .line 855
    .restart local v22       #args:[Ljava/lang/String;
    if-nez p4, :cond_12

    .line 856
    move-object/from16 p4, v22

    goto/16 :goto_0

    .line 858
    :cond_12
    move-object/from16 v0, v22

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 860
    goto/16 :goto_0

    .line 864
    .end local v22           #args:[Ljava/lang/String;
    :sswitch_e
    const-string v5, "settings"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 865
    sget-object v5, Lcom/android/browser/provider/BrowserProvider2;->SETTINGS_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 651
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_1
        0x3e9 -> :sswitch_1
        0x3ea -> :sswitch_2
        0x3eb -> :sswitch_1
        0x3ec -> :sswitch_4
        0x3ed -> :sswitch_3
        0x7d0 -> :sswitch_6
        0x7d1 -> :sswitch_5
        0xbb8 -> :sswitch_8
        0xbb9 -> :sswitch_7
        0xfa0 -> :sswitch_9
        0xfa1 -> :sswitch_a
        0x1388 -> :sswitch_b
        0x1770 -> :sswitch_d
        0x1771 -> :sswitch_c
        0x1b58 -> :sswitch_0
        0x1f40 -> :sswitch_e
        0x2328 -> :sswitch_d
        0x2329 -> :sswitch_c
    .end sparse-switch
.end method

.method queryDefaultFolderId(Ljava/lang/String;Ljava/lang/String;)J
    .locals 10
    .parameter "accountName"
    .parameter "accountType"

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 1095
    invoke-virtual {p0, p1}, Lcom/android/browser/provider/BrowserProvider2;->isNullAccount(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/browser/provider/BrowserProvider2;->isNullAccount(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1096
    iget-object v1, p0, Lcom/android/browser/provider/BrowserProvider2;->mOpenHelper:Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1097
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "bookmarks"

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v9

    const-string v3, "sync3 = ? AND account_type = ? AND account_name = ?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const-string v6, "bookmark_bar"

    aput-object v6, v4, v9

    aput-object p2, v4, v7

    const/4 v6, 0x2

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1102
    .local v8, c:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1103
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1106
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #c:Landroid/database/Cursor;
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x1

    goto :goto_0
.end method

.method refreshWidgets()V
    .locals 2

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider2;->mWidgetObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 589
    invoke-virtual {p0}, Lcom/android/browser/provider/BrowserProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/browser/widget/BookmarkThumbnailWidgetProvider;->refreshWidgets(Landroid/content/Context;)V

    .line 593
    :goto_0
    return-void

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider2;->mWidgetObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->dispatchChange(Z)V

    goto :goto_0
.end method

.method public setWidgetObserver(Landroid/database/ContentObserver;)V
    .locals 0
    .parameter "obs"

    .prologue
    .line 584
    iput-object p1, p0, Lcom/android/browser/provider/BrowserProvider2;->mWidgetObserver:Landroid/database/ContentObserver;

    .line 585
    return-void
.end method

.method updateBookmarksInTransaction(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1524
    const/4 v8, 0x0

    .line 1525
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider2;->mOpenHelper:Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1526
    const-string v1, "bookmarks"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "version"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "url"

    aput-object v4, v2, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1530
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    .line 1532
    if-nez p4, :cond_0

    .line 1533
    const-string v3, "modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1534
    const-string v3, "dirty"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1537
    :cond_0
    const-string v3, "url"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    .line 1538
    const/4 v4, 0x0

    .line 1539
    if-eqz v3, :cond_1

    .line 1540
    const-string v4, "url"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1542
    :cond_1
    invoke-virtual {p0, p1, v4}, Lcom/android/browser/provider/BrowserProvider2;->extractImageValues(Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v5

    move v6, v8

    .line 1544
    :cond_2
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1545
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v7

    .line 1546
    if-nez p4, :cond_3

    .line 1548
    const-string v7, "version"

    const/4 v8, 0x1

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1550
    :cond_3
    const-string v7, "bookmarks"

    const-string v8, "_id=?"

    invoke-virtual {v0, v7, p1, v8, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    add-int/2addr v6, v7

    .line 1553
    if-eqz v5, :cond_2

    .line 1554
    if-nez v3, :cond_4

    .line 1555
    const/4 v4, 0x2

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1556
    const-string v7, "url_key"

    invoke-virtual {v5, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1559
    :cond_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1560
    const/4 v7, 0x0

    aput-object v4, v2, v7

    .line 1561
    const-string v7, "images"

    const-string v8, "url_key=?"

    invoke-virtual {v0, v7, v5, v8, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_2

    .line 1562
    const-string v7, "images"

    const-string v8, "favicon"

    invoke-virtual {v0, v7, v8, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1568
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    :cond_6
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1570
    :cond_7
    return v6
.end method

.method updateHistoryInTransaction(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 18
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 1577
    const/4 v12, 0x0

    .line 1578
    .local v12, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/provider/BrowserProvider2;->mOpenHelper:Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14

    .line 1579
    .local v14, db:Landroid/database/sqlite/SQLiteDatabase;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/browser/provider/BrowserProvider2;->filterSearchClient([Ljava/lang/String;)V

    .line 1580
    sget-object v6, Landroid/provider/BrowserContract$History;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x2

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "_id"

    aput-object v8, v7, v5

    const/4 v5, 0x1

    const-string v8, "url"

    aput-object v8, v7, v5

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-virtual/range {v5 .. v10}, Lcom/android/browser/provider/BrowserProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1584
    .local v13, cursor:Landroid/database/Cursor;
    const/4 v5, 0x1

    :try_start_0
    new-array v11, v5, [Ljava/lang/String;

    .line 1586
    .local v11, args:[Ljava/lang/String;
    const-string v5, "url"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v16

    .line 1587
    .local v16, updatingUrl:Z
    const/16 v17, 0x0

    .line 1588
    .local v17, url:Ljava/lang/String;
    if-eqz v16, :cond_0

    .line 1589
    const-string v5, "url"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/browser/provider/BrowserProvider2;->filterSearchClient(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1590
    const-string v5, "url"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1592
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/provider/BrowserProvider2;->extractImageValues(Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v15

    .line 1594
    .local v15, imageValues:Landroid/content/ContentValues;
    :cond_1
    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1595
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v11, v5

    .line 1596
    const-string v5, "history"

    const-string v6, "_id=?"

    move-object v0, v14

    move-object v1, v5

    move-object/from16 v2, p1

    move-object v3, v6

    move-object v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v12, v5

    .line 1599
    if-eqz v15, :cond_1

    .line 1600
    if-nez v16, :cond_2

    .line 1601
    const/4 v5, 0x1

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1602
    const-string v5, "url_key"

    move-object v0, v15

    move-object v1, v5

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1604
    :cond_2
    const/4 v5, 0x0

    aput-object v17, v11, v5

    .line 1605
    const-string v5, "images"

    const-string v6, "url_key=?"

    invoke-virtual {v14, v5, v15, v6, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    .line 1606
    const-string v5, "images"

    const-string v6, "favicon"

    invoke-virtual {v14, v5, v6, v15}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1611
    .end local v11           #args:[Ljava/lang/String;
    .end local v15           #imageValues:Landroid/content/ContentValues;
    .end local v16           #updatingUrl:Z
    .end local v17           #url:Ljava/lang/String;
    :catchall_0
    move-exception v5

    if-eqz v13, :cond_3

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v5

    .restart local v11       #args:[Ljava/lang/String;
    .restart local v15       #imageValues:Landroid/content/ContentValues;
    .restart local v16       #updatingUrl:Z
    .restart local v17       #url:Ljava/lang/String;
    :cond_4
    if-eqz v13, :cond_5

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1613
    :cond_5
    return v12
.end method

.method public updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 17
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 1340
    sget-object v13, Lcom/android/browser/provider/BrowserProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    .line 1341
    .local v8, match:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/provider/BrowserProvider2;->mOpenHelper:Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 1342
    .local v7, db:Landroid/database/sqlite/SQLiteDatabase;
    const/16 v13, 0x2328

    if-eq v8, v13, :cond_0

    const/16 v13, 0x2329

    if-ne v8, v13, :cond_2

    .line 1344
    :cond_0
    const-string v13, "bookmark"

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 1345
    .local v5, bookmark:Ljava/lang/Integer;
    const-string v13, "bookmark"

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1346
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-nez v13, :cond_4

    .line 1347
    :cond_1
    const/16 v13, 0x2328

    if-ne v8, v13, :cond_3

    .line 1348
    const/16 v8, 0x7d0

    .line 1363
    .end local v5           #bookmark:Ljava/lang/Integer;
    :cond_2
    :goto_0
    const/4 v9, 0x0

    .line 1364
    .local v9, modified:I
    sparse-switch v8, :sswitch_data_0

    .line 1443
    new-instance v13, Ljava/lang/UnsupportedOperationException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unknown update URI "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1350
    .end local v9           #modified:I
    .restart local v5       #bookmark:Ljava/lang/Integer;
    :cond_3
    const/16 v8, 0x7d1

    goto :goto_0

    .line 1353
    :cond_4
    const/16 v13, 0x2328

    if-ne v8, v13, :cond_5

    .line 1354
    const/16 v8, 0x3e8

    .line 1358
    :goto_1
    const-string v13, "date"

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1359
    const-string v13, "visits"

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1360
    const-string v13, "user_entered"

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 1356
    :cond_5
    const/16 v8, 0x3e9

    goto :goto_1

    .line 1366
    .end local v5           #bookmark:Ljava/lang/Integer;
    .restart local v9       #modified:I
    :sswitch_0
    const-string v13, "bookmarks._id=?"

    move-object/from16 v0, p3

    move-object v1, v13

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1368
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p4

    move-object v1, v13

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 1373
    :sswitch_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/browser/provider/BrowserProvider2;->getSelectionWithAccounts(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v12

    .line 1374
    .local v12, withAccount:[Ljava/lang/Object;
    const/4 v13, 0x0

    aget-object p3, v12, v13

    .end local p3
    check-cast p3, Ljava/lang/String;

    .line 1375
    .restart local p3
    const/4 v13, 0x1

    aget-object p4, v12, v13

    .end local p4
    check-cast p4, [Ljava/lang/String;

    check-cast p4, [Ljava/lang/String;

    .line 1376
    .restart local p4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/browser/provider/BrowserProvider2;->updateBookmarksInTransaction(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v9

    .line 1378
    if-lez v9, :cond_6

    .line 1379
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/provider/BrowserProvider2;->refreshWidgets()V

    .line 1446
    .end local v12           #withAccount:[Ljava/lang/Object;
    :cond_6
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/provider/BrowserProvider2;->pruneImages()V

    .line 1447
    if-lez v9, :cond_7

    .line 1448
    invoke-virtual/range {p0 .. p1}, Lcom/android/browser/provider/BrowserProvider2;->postNotifyUri(Landroid/net/Uri;)V

    .line 1449
    sget-object v13, Lcom/android/browser/provider/BrowserProvider2;->LEGACY_AUTHORITY_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/android/browser/provider/BrowserProvider2;->postNotifyUri(Landroid/net/Uri;)V

    :cond_7
    move v13, v9

    .line 1451
    :goto_3
    return v13

    .line 1385
    :sswitch_2
    const-string v13, "history._id=?"

    move-object/from16 v0, p3

    move-object v1, v13

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1386
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p4

    move-object v1, v13

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 1391
    :sswitch_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/browser/provider/BrowserProvider2;->updateHistoryInTransaction(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 1392
    goto :goto_2

    .line 1396
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/provider/BrowserProvider2;->mSyncHelper:Lcom/android/common/content/SyncStateContentProviderHelper;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/provider/BrowserProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v14, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/provider/BrowserProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, p2

    move-object v3, v15

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/common/content/SyncStateContentProviderHelper;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 1398
    goto :goto_2

    .line 1402
    :sswitch_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/provider/BrowserProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1403
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "_id="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-nez p3, :cond_8

    const-string v14, ""

    :goto_4
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1406
    .local v10, selectionWithId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/provider/BrowserProvider2;->mSyncHelper:Lcom/android/common/content/SyncStateContentProviderHelper;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/provider/BrowserProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v14, v0

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, p2

    move-object v3, v10

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/common/content/SyncStateContentProviderHelper;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 1408
    goto/16 :goto_2

    .line 1403
    .end local v10           #selectionWithId:Ljava/lang/String;
    :cond_8
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " AND ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_4

    .line 1412
    :sswitch_6
    const-string v13, "url_key"

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1413
    .local v11, url:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 1414
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "Images.URL is required"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1416
    :cond_9
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v11

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/browser/provider/BrowserProvider2;->shouldUpdateImages(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v13

    if-nez v13, :cond_a

    .line 1417
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 1419
    :cond_a
    const-string v13, "images"

    const-string v14, "url_key=?"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v11, v15, v16

    move-object v0, v7

    move-object v1, v13

    move-object/from16 v2, p2

    move-object v3, v14

    move-object v4, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 1421
    .local v6, count:I
    if-nez v6, :cond_b

    .line 1422
    const-string v13, "images"

    const-string v14, "favicon"

    move-object v0, v7

    move-object v1, v13

    move-object v2, v14

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1423
    const/4 v6, 0x1

    .line 1425
    :cond_b
    const-string v13, "bookmarks"

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v13

    move-object v3, v11

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/browser/provider/BrowserProvider2;->getUrlCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    if-lez v13, :cond_c

    .line 1426
    sget-object v13, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/android/browser/provider/BrowserProvider2;->postNotifyUri(Landroid/net/Uri;)V

    .line 1427
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/provider/BrowserProvider2;->refreshWidgets()V

    .line 1429
    :cond_c
    const-string v13, "history"

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v13

    move-object v3, v11

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/browser/provider/BrowserProvider2;->getUrlCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    if-lez v13, :cond_d

    .line 1430
    sget-object v13, Landroid/provider/BrowserContract$History;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/android/browser/provider/BrowserProvider2;->postNotifyUri(Landroid/net/Uri;)V

    .line 1432
    :cond_d
    sget-object v13, Lcom/android/browser/provider/BrowserProvider2;->LEGACY_AUTHORITY_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/android/browser/provider/BrowserProvider2;->postNotifyUri(Landroid/net/Uri;)V

    .line 1433
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/provider/BrowserProvider2;->pruneImages()V

    move v13, v6

    .line 1434
    goto/16 :goto_3

    .line 1438
    .end local v6           #count:I
    .end local v11           #url:Ljava/lang/String;
    :sswitch_7
    const-string v13, "searches"

    move-object v0, v7

    move-object v1, v13

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 1439
    goto/16 :goto_2

    .line 1364
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_1
        0x3e9 -> :sswitch_0
        0x7d0 -> :sswitch_3
        0x7d1 -> :sswitch_2
        0xbb8 -> :sswitch_7
        0xfa0 -> :sswitch_4
        0xfa1 -> :sswitch_5
        0x1388 -> :sswitch_6
    .end sparse-switch
.end method
