.class public Lcom/google/android/apps/books/provider/BooksContract;
.super Ljava/lang/Object;
.source "BooksContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/provider/BooksContract$1;,
        Lcom/google/android/apps/books/provider/BooksContract$Files;,
        Lcom/google/android/apps/books/provider/BooksContract$Configuration;,
        Lcom/google/android/apps/books/provider/BooksContract$ConfigurationColumns;,
        Lcom/google/android/apps/books/provider/BooksContract$VolumeFiles;,
        Lcom/google/android/apps/books/provider/BooksContract$SessionKeys;,
        Lcom/google/android/apps/books/provider/BooksContract$Annotations;,
        Lcom/google/android/apps/books/provider/BooksContract$CollectionVolumes;,
        Lcom/google/android/apps/books/provider/BooksContract$Collections;,
        Lcom/google/android/apps/books/provider/BooksContract$VolumeStates;,
        Lcom/google/android/apps/books/provider/BooksContract$Pages;,
        Lcom/google/android/apps/books/provider/BooksContract$Resources;,
        Lcom/google/android/apps/books/provider/BooksContract$Chapters;,
        Lcom/google/android/apps/books/provider/BooksContract$Sections;,
        Lcom/google/android/apps/books/provider/BooksContract$Volumes;,
        Lcom/google/android/apps/books/provider/BooksContract$SessionKeyJoinColumns;,
        Lcom/google/android/apps/books/provider/BooksContract$AnnotationColumns;,
        Lcom/google/android/apps/books/provider/BooksContract$CollectionVolumeColumns;,
        Lcom/google/android/apps/books/provider/BooksContract$CollectionVolumeBaseColumns;,
        Lcom/google/android/apps/books/provider/BooksContract$CollectionColumns;,
        Lcom/google/android/apps/books/provider/BooksContract$VolumeStatesColumns;,
        Lcom/google/android/apps/books/provider/BooksContract$VolumeStatesJoinColumns;,
        Lcom/google/android/apps/books/provider/BooksContract$BaseVolumeStatesColumns;,
        Lcom/google/android/apps/books/provider/BooksContract$PageColumns;,
        Lcom/google/android/apps/books/provider/BooksContract$ResourceColumns;,
        Lcom/google/android/apps/books/provider/BooksContract$ChapterColumns;,
        Lcom/google/android/apps/books/provider/BooksContract$SectionColumns;,
        Lcom/google/android/apps/books/provider/BooksContract$VolumeColumns;,
        Lcom/google/android/apps/books/provider/BooksContract$VolumeJoinColumns;,
        Lcom/google/android/apps/books/provider/BooksContract$BaseVolumeColumns;,
        Lcom/google/android/apps/books/provider/BooksContract$ContentStatus;
    }
.end annotation


# static fields
.field public static final ACCOUNT_COLLECTIONS:I = 0x2bd

.field public static final ACCOUNT_COLLECTIONS_ID:I = 0x2be

.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "com.google"

.field public static final ACTION_READ:Ljava/lang/String; = "com.google.android.apps.books.intent.action.READ"

.field public static final ALL_COLLECTIONS:I = 0x2bc

.field public static final ALL_COLLECTION_VOLUMES:I = 0x2c6

.field public static final AUTH_TOKEN_TYPE:Ljava/lang/String; = "print"

.field public static final BASE_CONTENT_URI:Landroid/net/Uri; = null

.field public static final COLLECTION_VOLUMES:I = 0x2c7

.field public static final COLLECTION_VOLUMES_ID:I = 0x2c8

.field public static final CONFIGURATION:I = 0x320

.field private static final CONFIGURATION_PATH:Ljava/lang/String; = "config"

.field public static final CONTENT_AUTHORITY:Ljava/lang/String; = "com.google.android.apps.books"

.field public static final FILES:I = 0x384

.field public static final LIBRARY_VOLUMES:I = 0x2d0

.field public static final PARAM_LOCAL:Ljava/lang/String; = "local"

.field public static final PARAM_SYNC_ADAPTER:Ljava/lang/String; = "callerIsSyncAdapter"

.field private static final PATH_ACCOUNTS:Ljava/lang/String; = "accounts"

.field private static final PATH_SESSION_KEYS:Ljava/lang/String; = "session_keys"

.field private static final PATH_VOLUMES:Ljava/lang/String; = "volumes"

.field public static final SEARCH_SUGGEST:I = 0x1f4

.field public static final SESSION_KEYS:I = 0x1c2

.field public static final SESSION_KEYS_ID:I = 0x1c3

.field private static final STRONG_URI_MATCH:Z = true

.field public static final TAG_LAZY_SYNC:Ljava/lang/String; = "BooksLazySync"

.field public static final VOLUMES:I = 0x64

.field public static final VOLUMES_ANNOTATIONS:I = 0x1ae

.field public static final VOLUMES_ANNOTATIONS_ID:I = 0x1af

.field public static final VOLUMES_CHAPTERS:I = 0xcd

.field public static final VOLUMES_CHAPTERS_ID:I = 0xce

.field public static final VOLUMES_COVER:I = 0x96

.field public static final VOLUMES_COVER_THUMBNAIL:I = 0x97

.field public static final VOLUMES_ID:I = 0x65

.field public static final VOLUMES_ID_FILES:I = 0x19a

.field public static final VOLUMES_ID_FILES_PAGES:I = 0x19d

.field public static final VOLUMES_ID_FILES_RES:I = 0x19c

.field public static final VOLUMES_ID_FILES_SECTIONS:I = 0x19b

.field public static final VOLUMES_PAGES:I = 0x190

.field public static final VOLUMES_PAGES_CONTENT:I = 0x192

.field public static final VOLUMES_PAGES_ID:I = 0x191

.field public static final VOLUMES_RES:I = 0x12c

.field public static final VOLUMES_RES_CONTENT:I = 0x12e

.field public static final VOLUMES_RES_ID:I = 0x12d

.field public static final VOLUMES_SECTIONS:I = 0xc8

.field public static final VOLUMES_SECTIONS_CONTENT:I = 0xca

.field public static final VOLUMES_SECTIONS_ID:I = 0xc9

.field public static final VOLUME_STATES:I = 0x258

.field public static final VOLUME_STATES_ID:I = 0x259

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/google/android/apps/books/provider/BooksContract;->buildUriMatcher()Landroid/content/UriMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/books/provider/BooksContract;->sUriMatcher:Landroid/content/UriMatcher;

    .line 298
    const-string v0, "content://com.google.android.apps.books"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/books/provider/BooksContract;->BASE_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2749
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2750
    return-void
.end method

.method private static buildUriMatcher()Landroid/content/UriMatcher;
    .locals 6

    .prologue
    const/16 v5, 0x1f4

    const-string v4, "com.google.android.apps.books"

    .line 97
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    .line 98
    .local v1, matcher:Landroid/content/UriMatcher;
    const-string v0, "com.google.android.apps.books"

    .line 100
    .local v0, authority:Ljava/lang/String;
    const-string v2, "com.google.android.apps.books"

    const-string v2, "volumes"

    const/16 v3, 0x64

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 101
    const-string v2, "com.google.android.apps.books"

    const-string v2, "volumes/*"

    const/16 v3, 0x65

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 103
    const-string v2, "com.google.android.apps.books"

    const-string v2, "volumes/*/cover"

    const/16 v3, 0x96

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 104
    const-string v2, "com.google.android.apps.books"

    const-string v2, "volumes/*/cover_thumbnail"

    const/16 v3, 0x97

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 106
    const-string v2, "com.google.android.apps.books"

    const-string v2, "volumes/*/sections"

    const/16 v3, 0xc8

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 107
    const-string v2, "com.google.android.apps.books"

    const-string v2, "volumes/*/sections/*"

    const/16 v3, 0xc9

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 108
    const-string v2, "com.google.android.apps.books"

    const-string v2, "volumes/*/sections/*/content"

    const/16 v3, 0xca

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 110
    const-string v2, "com.google.android.apps.books"

    const-string v2, "volumes/*/chapters"

    const/16 v3, 0xcd

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 111
    const-string v2, "com.google.android.apps.books"

    const-string v2, "volumes/*/chapters/*"

    const/16 v3, 0xce

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 113
    const-string v2, "com.google.android.apps.books"

    const-string v2, "volumes/*/res"

    const/16 v3, 0x12c

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 114
    const-string v2, "com.google.android.apps.books"

    const-string v2, "volumes/*/res/*"

    const/16 v3, 0x12d

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 115
    const-string v2, "com.google.android.apps.books"

    const-string v2, "volumes/*/res/*/content"

    const/16 v3, 0x12e

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 117
    const-string v2, "com.google.android.apps.books"

    const-string v2, "volumes/*/pages"

    const/16 v3, 0x190

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 118
    const-string v2, "com.google.android.apps.books"

    const-string v2, "volumes/*/pages/*"

    const/16 v3, 0x191

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 119
    const-string v2, "com.google.android.apps.books"

    const-string v2, "volumes/*/pages/*/content"

    const/16 v3, 0x192

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 121
    const-string v2, "com.google.android.apps.books"

    const-string v2, "volumes/*/files"

    const/16 v3, 0x19a

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 122
    const-string v2, "com.google.android.apps.books"

    const-string v2, "volumes/*/files/sections"

    const/16 v3, 0x19b

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 123
    const-string v2, "com.google.android.apps.books"

    const-string v2, "volumes/*/files/res"

    const/16 v3, 0x19c

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 124
    const-string v2, "com.google.android.apps.books"

    const-string v2, "volumes/*/files/pages"

    const/16 v3, 0x19d

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 126
    const-string v2, "com.google.android.apps.books"

    const-string v2, "volumes/*/annotations"

    const/16 v3, 0x1ae

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 127
    const-string v2, "com.google.android.apps.books"

    const-string v2, "volumes/*/annotations/#"

    const/16 v3, 0x1af

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 129
    const-string v2, "com.google.android.apps.books"

    const-string v2, "session_keys"

    const/16 v3, 0x1c2

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 130
    const-string v2, "com.google.android.apps.books"

    const-string v2, "session_keys/#"

    const/16 v3, 0x1c3

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 134
    const-string v2, "com.google.android.apps.books"

    const-string v2, "search_suggest_query/"

    invoke-virtual {v1, v4, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 135
    const-string v2, "com.google.android.apps.books"

    const-string v2, "search_suggest_query/*"

    invoke-virtual {v1, v4, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 137
    const-string v2, "com.google.android.apps.books"

    const-string v2, "states"

    const/16 v3, 0x258

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 138
    const-string v2, "com.google.android.apps.books"

    const-string v2, "states/accounts/*/volumes/*"

    const/16 v3, 0x259

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 140
    const-string v2, "com.google.android.apps.books"

    const-string v2, "accounts/collections"

    const/16 v3, 0x2bc

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 141
    const-string v2, "com.google.android.apps.books"

    const-string v2, "accounts/*/collections"

    const/16 v3, 0x2bd

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 142
    const-string v2, "com.google.android.apps.books"

    const-string v2, "accounts/*/collections/#"

    const/16 v3, 0x2be

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 144
    const-string v2, "com.google.android.apps.books"

    const-string v2, "accounts/collections/volumes"

    const/16 v3, 0x2c6

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 145
    const-string v2, "com.google.android.apps.books"

    const-string v2, "accounts/*/collections/#/volumes"

    const/16 v3, 0x2c7

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 146
    const-string v2, "com.google.android.apps.books"

    const-string v2, "accounts/*/collections/#/volumes/*"

    const/16 v3, 0x2c8

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 147
    const-string v2, "com.google.android.apps.books"

    const-string v2, "accounts/*/collections/library/volumes"

    const/16 v3, 0x2d0

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 149
    const-string v2, "com.google.android.apps.books"

    const-string v2, "config"

    const/16 v3, 0x320

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 151
    const-string v2, "com.google.android.apps.books"

    const-string v2, "files"

    const/16 v3, 0x384

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 153
    return-object v1
.end method

.method public static markAsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"

    .prologue
    .line 238
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "callerIsSyncAdapter"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static markLocal(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"

    .prologue
    .line 234
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "local"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static match(Landroid/net/Uri;)I
    .locals 1
    .parameter "uri"

    .prologue
    .line 165
    sget-object v0, Lcom/google/android/apps/books/provider/BooksContract;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public static requestManualSync(Landroid/accounts/Account;)V
    .locals 1
    .parameter "account"

    .prologue
    const/4 v0, 0x1

    .line 247
    invoke-static {p0, v0, v0}, Lcom/google/android/apps/books/provider/BooksContract;->requestManualSync(Landroid/accounts/Account;ZZ)V

    .line 248
    return-void
.end method

.method public static requestManualSync(Landroid/accounts/Account;ZZ)V
    .locals 3
    .parameter "account"
    .parameter "download"
    .parameter "forceFetchBooks"

    .prologue
    const/4 v2, 0x1

    .line 259
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 260
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "force"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 262
    if-eqz p1, :cond_0

    .line 263
    const-string v1, "SyncService.DOWNLOAD"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 265
    :cond_0
    if-nez p2, :cond_1

    .line 266
    const-string v1, "SyncService.FETCH_BOOKS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 269
    :cond_1
    const-string v1, "com.google.android.apps.books"

    invoke-static {p0, v1, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 270
    return-void
.end method

.method public static varargs requestManualVolumeContentSync(ZLandroid/accounts/Account;[Ljava/lang/String;)V
    .locals 3
    .parameter "displayProgress"
    .parameter "account"
    .parameter "volumeIds"

    .prologue
    .line 278
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 279
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "force"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 280
    const-string v1, "SyncService.DISPLAY_PROGRESS"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 281
    invoke-static {v0, p2}, Lcom/google/android/apps/books/service/SyncService;->setVolumeIds(Landroid/os/Bundle;[Ljava/lang/String;)V

    .line 282
    const-string v1, "com.google.android.apps.books"

    invoke-static {p1, v1, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 283
    return-void
.end method
