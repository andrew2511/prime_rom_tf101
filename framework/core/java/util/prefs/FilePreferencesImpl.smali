.class Ljava/util/prefs/FilePreferencesImpl;
.super Ljava/util/prefs/AbstractPreferences;
.source "FilePreferencesImpl.java"


# static fields
.field private static final PREFS_FILE_NAME:Ljava/lang/String; = "prefs.xml"

.field private static SYSTEM_HOME:Ljava/lang/String;

.field private static USER_HOME:Ljava/lang/String;


# instance fields
.field private dir:Ljava/io/File;

.field private path:Ljava/lang/String;

.field private prefs:Ljava/util/Properties;

.field private prefsFile:Ljava/io/File;

.field private removed:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private updated:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    new-instance v0, Ljava/util/prefs/FilePreferencesImpl$1;

    invoke-direct {v0}, Ljava/util/prefs/FilePreferencesImpl$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 66
    return-void
.end method

.method private constructor <init>(Ljava/util/prefs/AbstractPreferences;Ljava/lang/String;)V
    .registers 5
    .parameter "parent"
    .parameter "name"

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Ljava/util/prefs/AbstractPreferences;-><init>(Ljava/util/prefs/AbstractPreferences;Ljava/lang/String;)V

    .line 87
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->removed:Ljava/util/Set;

    .line 90
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->updated:Ljava/util/Set;

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p1, Ljava/util/prefs/FilePreferencesImpl;

    .end local p1
    iget-object v1, p1, Ljava/util/prefs/FilePreferencesImpl;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->path:Ljava/lang/String;

    .line 115
    invoke-direct {p0}, Ljava/util/prefs/FilePreferencesImpl;->initPrefs()V

    .line 116
    return-void
.end method

.method constructor <init>(Z)V
    .registers 4
    .parameter "userNode"

    .prologue
    .line 103
    const/4 v0, 0x0

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Ljava/util/prefs/AbstractPreferences;-><init>(Ljava/util/prefs/AbstractPreferences;Ljava/lang/String;)V

    .line 87
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->removed:Ljava/util/Set;

    .line 90
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->updated:Ljava/util/Set;

    .line 104
    iput-boolean p1, p0, Ljava/util/prefs/FilePreferencesImpl;->userNode:Z

    .line 105
    if-eqz p1, :cond_20

    sget-object v0, Ljava/util/prefs/FilePreferencesImpl;->USER_HOME:Ljava/lang/String;

    :goto_1a
    iput-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->path:Ljava/lang/String;

    .line 106
    invoke-direct {p0}, Ljava/util/prefs/FilePreferencesImpl;->initPrefs()V

    .line 107
    return-void

    .line 105
    :cond_20
    sget-object v0, Ljava/util/prefs/FilePreferencesImpl;->SYSTEM_HOME:Ljava/lang/String;

    goto :goto_1a
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .parameter "x0"

    .prologue
    .line 36
    sput-object p0, Ljava/util/prefs/FilePreferencesImpl;->USER_HOME:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .parameter "x0"

    .prologue
    .line 36
    sput-object p0, Ljava/util/prefs/FilePreferencesImpl;->SYSTEM_HOME:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Ljava/util/prefs/FilePreferencesImpl;)Ljava/io/File;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->dir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$300(Ljava/util/prefs/FilePreferencesImpl;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->path:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Ljava/util/prefs/FilePreferencesImpl;)Ljava/io/File;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->prefsFile:Ljava/io/File;

    return-object v0
.end method

.method private initPrefs()V
    .registers 4

    .prologue
    .line 119
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ljava/util/prefs/FilePreferencesImpl;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->dir:Ljava/io/File;

    .line 120
    new-instance v0, Ljava/util/prefs/FilePreferencesImpl$2;

    invoke-direct {v0, p0}, Ljava/util/prefs/FilePreferencesImpl$2;-><init>(Ljava/util/prefs/FilePreferencesImpl;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Ljava/util/prefs/FilePreferencesImpl;->newNode:Z

    .line 125
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljava/util/prefs/FilePreferencesImpl;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "prefs.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->prefsFile:Ljava/io/File;

    .line 126
    iget-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->prefsFile:Ljava/io/File;

    invoke-static {v0}, Ljava/util/prefs/XMLParser;->loadFilePrefs(Ljava/io/File;)Ljava/util/Properties;

    move-result-object v0

    iput-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->prefs:Ljava/util/Properties;

    .line 127
    return-void
.end method


# virtual methods
.method protected childSpi(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;
    .registers 3
    .parameter "name"

    .prologue
    .line 151
    new-instance v0, Ljava/util/prefs/FilePreferencesImpl;

    invoke-direct {v0, p0, p1}, Ljava/util/prefs/FilePreferencesImpl;-><init>(Ljava/util/prefs/AbstractPreferences;Ljava/lang/String;)V

    .line 152
    .local v0, child:Ljava/util/prefs/FilePreferencesImpl;
    return-object v0
.end method

.method protected childrenNamesSpi()[Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 131
    new-instance v1, Ljava/util/prefs/FilePreferencesImpl$3;

    invoke-direct {v1, p0}, Ljava/util/prefs/FilePreferencesImpl$3;-><init>(Ljava/util/prefs/FilePreferencesImpl;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 142
    .local v0, names:[Ljava/lang/String;
    if-nez v0, :cond_3c

    .line 143
    new-instance v1, Ljava/util/prefs/BackingStoreException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot get child names for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/util/prefs/FilePreferencesImpl;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (path is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/prefs/FilePreferencesImpl;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/prefs/BackingStoreException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 146
    :cond_3c
    return-object v0
.end method

.method protected flushSpi()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 159
    :try_start_0
    invoke-virtual {p0}, Ljava/util/prefs/FilePreferencesImpl;->isRemoved()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 182
    :goto_6
    return-void

    .line 163
    :cond_7
    iget-object v4, p0, Ljava/util/prefs/FilePreferencesImpl;->prefsFile:Ljava/io/File;

    invoke-static {v4}, Ljava/util/prefs/XMLParser;->loadFilePrefs(Ljava/io/File;)Ljava/util/Properties;

    move-result-object v0

    .line 165
    .local v0, currentPrefs:Ljava/util/Properties;
    iget-object v4, p0, Ljava/util/prefs/FilePreferencesImpl;->removed:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 166
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 167
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    goto :goto_13

    .line 179
    .end local v0           #currentPrefs:Ljava/util/Properties;
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_21
    move-exception v4

    move-object v1, v4

    .line 180
    .local v1, e:Ljava/lang/Exception;
    new-instance v4, Ljava/util/prefs/BackingStoreException;

    invoke-direct {v4, v1}, Ljava/util/prefs/BackingStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 169
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #currentPrefs:Ljava/util/Properties;
    .restart local v2       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_29
    :try_start_29
    iget-object v4, p0, Ljava/util/prefs/FilePreferencesImpl;->removed:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 170
    iget-object v4, p0, Ljava/util/prefs/FilePreferencesImpl;->updated:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 171
    :goto_34
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_48

    .line 172
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 173
    .local v3, key:Ljava/lang/Object;
    iget-object v4, p0, Ljava/util/prefs/FilePreferencesImpl;->prefs:Ljava/util/Properties;

    invoke-virtual {v4, v3}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_34

    .line 175
    .end local v3           #key:Ljava/lang/Object;
    :cond_48
    iget-object v4, p0, Ljava/util/prefs/FilePreferencesImpl;->updated:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 177
    iput-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->prefs:Ljava/util/Properties;

    .line 178
    iget-object v4, p0, Ljava/util/prefs/FilePreferencesImpl;->prefsFile:Ljava/io/File;

    iget-object v5, p0, Ljava/util/prefs/FilePreferencesImpl;->prefs:Ljava/util/Properties;

    invoke-static {v4, v5}, Ljava/util/prefs/XMLParser;->flushFilePrefs(Ljava/io/File;Ljava/util/Properties;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_56} :catch_21

    goto :goto_6
.end method

.method protected getSpi(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "key"

    .prologue
    .line 187
    :try_start_0
    iget-object v1, p0, Ljava/util/prefs/FilePreferencesImpl;->prefs:Ljava/util/Properties;

    if-nez v1, :cond_c

    .line 188
    iget-object v1, p0, Ljava/util/prefs/FilePreferencesImpl;->prefsFile:Ljava/io/File;

    invoke-static {v1}, Ljava/util/prefs/XMLParser;->loadFilePrefs(Ljava/io/File;)Ljava/util/Properties;

    move-result-object v1

    iput-object v1, p0, Ljava/util/prefs/FilePreferencesImpl;->prefs:Ljava/util/Properties;

    .line 190
    :cond_c
    iget-object v1, p0, Ljava/util/prefs/FilePreferencesImpl;->prefs:Ljava/util/Properties;

    invoke-virtual {v1, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_13

    move-result-object v1

    .line 193
    :goto_12
    return-object v1

    .line 191
    :catch_13
    move-exception v1

    move-object v0, v1

    .line 193
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_12
.end method

.method protected keysSpi()[Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 199
    iget-object v1, p0, Ljava/util/prefs/FilePreferencesImpl;->prefs:Ljava/util/Properties;

    invoke-virtual {v1}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 200
    .local v0, ks:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method protected putSpi(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 205
    iget-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->prefs:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 206
    iget-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->updated:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 207
    return-void
.end method

.method protected removeNodeSpi()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 211
    new-instance v1, Ljava/util/prefs/FilePreferencesImpl$4;

    invoke-direct {v1, p0}, Ljava/util/prefs/FilePreferencesImpl$4;-><init>(Ljava/util/prefs/FilePreferencesImpl;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 217
    .local v0, removeSucceed:Z
    if-nez v0, :cond_2e

    .line 218
    new-instance v1, Ljava/util/prefs/BackingStoreException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot remove "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/util/prefs/FilePreferencesImpl;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/prefs/BackingStoreException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 220
    :cond_2e
    return-void
.end method

.method protected removeSpi(Ljava/lang/String;)V
    .registers 3
    .parameter "key"

    .prologue
    .line 224
    iget-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->prefs:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->updated:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 226
    iget-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->removed:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 227
    return-void
.end method

.method protected syncSpi()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 231
    invoke-virtual {p0}, Ljava/util/prefs/FilePreferencesImpl;->flushSpi()V

    .line 232
    return-void
.end method
