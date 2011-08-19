.class public Lcom/google/android/music/BrowserActivityUtils;
.super Ljava/lang/Object;
.source "BrowserActivityUtils.java"


# static fields
.field private static final AT_THE_END:I = 0x64

#the value of this static final field might be set in the static constructor
.field private static final LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "BrowserActivityUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "BrowserActivityUtils"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/BrowserActivityUtils;->LOGV:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addKeepOnMenu(Lcom/google/android/music/jumper/MusicPreferences;Landroid/database/Cursor;Lcom/google/android/music/menu/MusicListMenu;)V
    .locals 8
    .parameter "prefs"
    .parameter "cursor"
    .parameter "menu"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 31
    invoke-virtual {p2}, Lcom/google/android/music/menu/MusicListMenu;->getMenuInfo()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 32
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "MenuInfo not set."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 34
    :cond_0
    const-string v4, "hasRemote"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 36
    .local v0, hasRemoteIdx:I
    if-ltz v0, :cond_2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 37
    const/16 v4, 0xf

    const v5, 0x7f0c00a3

    invoke-virtual {p2, v4, v7, v5}, Lcom/google/android/music/menu/MusicListMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v1

    .line 40
    .local v1, item:Lcom/google/android/music/menu/MusicMenuItem;
    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->hasIconsInPopupMenus()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 41
    const v4, 0x7f020148

    invoke-virtual {v1, v4}, Lcom/google/android/music/menu/MusicMenuItem;->setIcon(I)Lcom/google/android/music/menu/MusicMenuItem;

    .line 43
    :cond_1
    invoke-virtual {v1, v6}, Lcom/google/android/music/menu/MusicMenuItem;->setCheckboxEnabled(Z)V

    .line 44
    const-string v4, "KeepOnId"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 46
    .local v2, keepOnIndex:I
    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_3

    move v3, v6

    .line 47
    .local v3, kept:Z
    :goto_0
    invoke-virtual {v1, v3}, Lcom/google/android/music/menu/MusicMenuItem;->setChecked(Z)V

    .line 49
    .end local v1           #item:Lcom/google/android/music/menu/MusicMenuItem;
    .end local v2           #keepOnIndex:I
    .end local v3           #kept:Z
    :cond_2
    return-void

    .restart local v1       #item:Lcom/google/android/music/menu/MusicMenuItem;
    .restart local v2       #keepOnIndex:I
    :cond_3
    move v3, v7

    .line 46
    goto :goto_0
.end method

.method public static addSearchMenu(Lcom/google/android/music/jumper/MusicPreferences;Lcom/google/android/music/menu/MusicListMenu;)V
    .locals 4
    .parameter "prefs"
    .parameter "menu"

    .prologue
    .line 56
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isPreGingerbread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    const/16 v1, 0x12c

    const/16 v2, 0x64

    const v3, 0x7f0c000f

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/music/menu/MusicListMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v0

    .line 61
    .local v0, searchMenuItem:Lcom/google/android/music/menu/MusicMenuItem;
    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->hasIconsInPopupMenus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    const v1, 0x7f020156

    invoke-virtual {v0, v1}, Lcom/google/android/music/menu/MusicMenuItem;->setIcon(I)Lcom/google/android/music/menu/MusicMenuItem;

    goto :goto_0
.end method
