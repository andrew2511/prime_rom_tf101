.class Ljava/util/prefs/XMLParser;
.super Ljava/lang/Object;
.source "XMLParser.java"


# static fields
.field static final DOCTYPE:Ljava/lang/String; = "<!DOCTYPE preferences SYSTEM"

.field private static final FILE_PREFS:Ljava/lang/String; = "<!DOCTYPE map SYSTEM \'http://java.sun.com/dtd/preferences.dtd\'>"

.field static final HEADER:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

.field static final PREFS_DTD:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>    <!ELEMENT preferences (root)>    <!ATTLIST preferences EXTERNAL_XML_VERSION CDATA \"0.0\" >    <!ELEMENT root (map, node*) >    <!ATTLIST root type (system|user) #REQUIRED >    <!ELEMENT node (map, node*) >    <!ATTLIST node name CDATA #REQUIRED >    <!ELEMENT map (entry*) >    <!ELEMENT entry EMPTY >    <!ATTLIST entry key   CDATA #REQUIRED value CDATA #REQUIRED >"

.field static final PREFS_DTD_NAME:Ljava/lang/String; = "http://java.sun.com/dtd/preferences.dtd"

.field private static final XML_VERSION:F = 1.0f

.field private static final builder:Ljavax/xml/parsers/DocumentBuilder;

.field private static indent:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 107
    const/4 v2, -0x1

    sput v2, Ljava/util/prefs/XMLParser;->indent:I

    .line 113
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 115
    .local v1, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    .line 118
    :try_start_b
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    sput-object v2, Ljava/util/prefs/XMLParser;->builder:Ljavax/xml/parsers/DocumentBuilder;
    :try_end_11
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_b .. :try_end_11} :catch_26

    .line 122
    sget-object v2, Ljava/util/prefs/XMLParser;->builder:Ljavax/xml/parsers/DocumentBuilder;

    new-instance v3, Ljava/util/prefs/XMLParser$1;

    invoke-direct {v3}, Ljava/util/prefs/XMLParser$1;-><init>()V

    invoke-virtual {v2, v3}, Ljavax/xml/parsers/DocumentBuilder;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 134
    sget-object v2, Ljava/util/prefs/XMLParser;->builder:Ljavax/xml/parsers/DocumentBuilder;

    new-instance v3, Ljava/util/prefs/XMLParser$2;

    invoke-direct {v3}, Ljava/util/prefs/XMLParser$2;-><init>()V

    invoke-virtual {v2, v3}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 147
    return-void

    .line 119
    :catch_26
    move-exception v2

    move-object v0, v2

    .line 120
    .local v0, e:Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    return-void
.end method

.method private static exportEntries(Ljava/util/prefs/Preferences;Ljava/io/BufferedWriter;)V
    .registers 7
    .parameter "prefs"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    invoke-virtual {p0}, Ljava/util/prefs/Preferences;->keys()[Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, keys:[Ljava/lang/String;
    array-length v3, v1

    new-array v2, v3, [Ljava/lang/String;

    .line 222
    .local v2, values:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    array-length v3, v1

    if-ge v0, v3, :cond_17

    .line 223
    aget-object v3, v1, v0

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Ljava/util/prefs/Preferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 225
    :cond_17
    invoke-static {v1, v2, p1}, Ljava/util/prefs/XMLParser;->exportEntries([Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 226
    return-void
.end method

.method private static exportEntries([Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V
    .registers 11
    .parameter "keys"
    .parameter "values"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 230
    array-length v1, p0

    if-nez v1, :cond_c

    .line 231
    const-string v1, "map"

    invoke-static {v1, p2}, Ljava/util/prefs/XMLParser;->flushEmptyElement(Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 242
    :goto_b
    return-void

    .line 234
    :cond_c
    const-string v1, "map"

    invoke-static {v1, p2}, Ljava/util/prefs/XMLParser;->flushStartTag(Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 235
    const/4 v0, 0x0

    .local v0, i:I
    :goto_12
    array-length v1, p0

    if-ge v0, v1, :cond_35

    .line 236
    aget-object v1, p1, v0

    if-eqz v1, :cond_32

    .line 237
    const-string v1, "entry"

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "key"

    aput-object v3, v2, v5

    const-string v3, "value"

    aput-object v3, v2, v6

    new-array v3, v7, [Ljava/lang/String;

    aget-object v4, p0, v0

    aput-object v4, v3, v5

    aget-object v4, p1, v0

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3, p2}, Ljava/util/prefs/XMLParser;->flushEmptyElement(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 235
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 241
    :cond_35
    const-string v1, "map"

    invoke-static {v1, p2}, Ljava/util/prefs/XMLParser;->flushEndTag(Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto :goto_b
.end method

.method private static exportNode(Ljava/util/StringTokenizer;Ljava/util/prefs/Preferences;ZLjava/io/BufferedWriter;)V
    .registers 10
    .parameter "ancestors"
    .parameter "prefs"
    .parameter "withSubTree"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 188
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 189
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, name:Ljava/lang/String;
    const-string v1, "node"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "name"

    aput-object v3, v2, v4

    new-array v3, v5, [Ljava/lang/String;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3, p3}, Ljava/util/prefs/XMLParser;->flushStartTag(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 191
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 192
    const-string v1, "map"

    invoke-static {v1, p3}, Ljava/util/prefs/XMLParser;->flushEmptyElement(Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 193
    invoke-static {p0, p1, p2, p3}, Ljava/util/prefs/XMLParser;->exportNode(Ljava/util/StringTokenizer;Ljava/util/prefs/Preferences;ZLjava/io/BufferedWriter;)V

    .line 200
    :cond_29
    :goto_29
    const-string v1, "node"

    invoke-static {v1, p3}, Ljava/util/prefs/XMLParser;->flushEndTag(Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 202
    .end local v0           #name:Ljava/lang/String;
    :cond_2e
    return-void

    .line 195
    .restart local v0       #name:Ljava/lang/String;
    :cond_2f
    invoke-static {p1, p3}, Ljava/util/prefs/XMLParser;->exportEntries(Ljava/util/prefs/Preferences;Ljava/io/BufferedWriter;)V

    .line 196
    if-eqz p2, :cond_29

    .line 197
    invoke-static {p1, p3}, Ljava/util/prefs/XMLParser;->exportSubTree(Ljava/util/prefs/Preferences;Ljava/io/BufferedWriter;)V

    goto :goto_29
.end method

.method static exportPrefs(Ljava/util/prefs/Preferences;Ljava/io/OutputStream;Z)V
    .registers 11
    .parameter "prefs"
    .parameter "stream"
    .parameter "withSubTree"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 157
    const/4 v2, -0x1

    sput v2, Ljava/util/prefs/XMLParser;->indent:I

    .line 158
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    const-string v3, "UTF-8"

    invoke-direct {v2, p1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 159
    .local v1, out:Ljava/io/BufferedWriter;
    const-string v2, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 161
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 163
    const-string v2, "<!DOCTYPE preferences SYSTEM"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 164
    const-string v2, " \'"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 165
    const-string v2, "http://java.sun.com/dtd/preferences.dtd"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 166
    const-string v2, "\'>"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 168
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 170
    const-string v2, "preferences"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "EXTERNAL_XML_VERSION"

    aput-object v4, v3, v6

    new-array v4, v7, [Ljava/lang/String;

    const/high16 v5, 0x3f80

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4, v1}, Ljava/util/prefs/XMLParser;->flushStartTag(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 172
    const-string v2, "root"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "type"

    aput-object v4, v3, v6

    new-array v4, v7, [Ljava/lang/String;

    invoke-virtual {p0}, Ljava/util/prefs/Preferences;->isUserNode()Z

    move-result v5

    if-eqz v5, :cond_84

    const-string v5, "user"

    :goto_5d
    aput-object v5, v4, v6

    invoke-static {v2, v3, v4, v1}, Ljava/util/prefs/XMLParser;->flushStartTag(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 174
    const-string v2, "map"

    invoke-static {v2, v1}, Ljava/util/prefs/XMLParser;->flushEmptyElement(Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 176
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-virtual {p0}, Ljava/util/prefs/Preferences;->absolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-direct {v0, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .local v0, ancestors:Ljava/util/StringTokenizer;
    invoke-static {v0, p0, p2, v1}, Ljava/util/prefs/XMLParser;->exportNode(Ljava/util/StringTokenizer;Ljava/util/prefs/Preferences;ZLjava/io/BufferedWriter;)V

    .line 179
    const-string v2, "root"

    invoke-static {v2, v1}, Ljava/util/prefs/XMLParser;->flushEndTag(Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 180
    const-string v2, "preferences"

    invoke-static {v2, v1}, Ljava/util/prefs/XMLParser;->flushEndTag(Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 181
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 182
    const/4 v1, 0x0

    .line 183
    return-void

    .line 172
    .end local v0           #ancestors:Ljava/util/StringTokenizer;
    :cond_84
    const-string v5, "system"

    goto :goto_5d
.end method

.method private static exportSubTree(Ljava/util/prefs/Preferences;Ljava/io/BufferedWriter;)V
    .registers 11
    .parameter "prefs"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 206
    invoke-virtual {p0}, Ljava/util/prefs/Preferences;->childrenNames()[Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, names:[Ljava/lang/String;
    array-length v3, v2

    if-lez v3, :cond_32

    .line 208
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    array-length v3, v2

    if-ge v1, v3, :cond_32

    .line 209
    aget-object v3, v2, v1

    invoke-virtual {p0, v3}, Ljava/util/prefs/Preferences;->node(Ljava/lang/String;)Ljava/util/prefs/Preferences;

    move-result-object v0

    .line 210
    .local v0, child:Ljava/util/prefs/Preferences;
    const-string v3, "node"

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "name"

    aput-object v5, v4, v7

    new-array v5, v8, [Ljava/lang/String;

    aget-object v6, v2, v1

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5, p1}, Ljava/util/prefs/XMLParser;->flushStartTag(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 211
    invoke-static {v0, p1}, Ljava/util/prefs/XMLParser;->exportEntries(Ljava/util/prefs/Preferences;Ljava/io/BufferedWriter;)V

    .line 212
    invoke-static {v0, p1}, Ljava/util/prefs/XMLParser;->exportSubTree(Ljava/util/prefs/Preferences;Ljava/io/BufferedWriter;)V

    .line 213
    const-string v3, "node"

    invoke-static {v3, p1}, Ljava/util/prefs/XMLParser;->flushEndTag(Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 208
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 216
    .end local v0           #child:Ljava/util/prefs/Preferences;
    .end local v1           #i:I
    :cond_32
    return-void
.end method

.method private static flushEmptyElement(Ljava/lang/String;Ljava/io/BufferedWriter;)V
    .registers 4
    .parameter "tagName"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    sget v0, Ljava/util/prefs/XMLParser;->indent:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Ljava/util/prefs/XMLParser;->indent:I

    invoke-static {v0, p1}, Ljava/util/prefs/XMLParser;->flushIndent(ILjava/io/BufferedWriter;)V

    .line 256
    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p1, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 258
    const-string v0, " />"

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    .line 260
    sget v0, Ljava/util/prefs/XMLParser;->indent:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sput v0, Ljava/util/prefs/XMLParser;->indent:I

    .line 261
    return-void
.end method

.method private static flushEmptyElement(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V
    .registers 6
    .parameter "tagName"
    .parameter "attrKeys"
    .parameter "attrValues"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    sget v0, Ljava/util/prefs/XMLParser;->indent:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Ljava/util/prefs/XMLParser;->indent:I

    invoke-static {v0, p3}, Ljava/util/prefs/XMLParser;->flushIndent(ILjava/io/BufferedWriter;)V

    .line 266
    const-string v0, "<"

    invoke-virtual {p3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p3, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 268
    invoke-static {p1, p2, p3}, Ljava/util/prefs/XMLParser;->flushPairs([Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 269
    const-string v0, " />"

    invoke-virtual {p3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p3}, Ljava/io/BufferedWriter;->newLine()V

    .line 271
    sget v0, Ljava/util/prefs/XMLParser;->indent:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sput v0, Ljava/util/prefs/XMLParser;->indent:I

    .line 272
    return-void
.end method

.method private static flushEndTag(Ljava/lang/String;Ljava/io/BufferedWriter;)V
    .registers 4
    .parameter "tagName"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    sget v0, Ljava/util/prefs/XMLParser;->indent:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    sput v1, Ljava/util/prefs/XMLParser;->indent:I

    invoke-static {v0, p1}, Ljava/util/prefs/XMLParser;->flushIndent(ILjava/io/BufferedWriter;)V

    .line 247
    const-string v0, "</"

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p1, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 249
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    .line 251
    return-void
.end method

.method static flushFilePrefs(Ljava/io/File;Ljava/util/Properties;)V
    .registers 3
    .parameter "file"
    .parameter "prefs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/PrivilegedActionException;
        }
    .end annotation

    .prologue
    .line 524
    new-instance v0, Ljava/util/prefs/XMLParser$4;

    invoke-direct {v0, p0, p1}, Ljava/util/prefs/XMLParser$4;-><init>(Ljava/io/File;Ljava/util/Properties;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    .line 530
    return-void
.end method

.method static flushFilePrefsImpl(Ljava/io/File;Ljava/util/Properties;)V
    .registers 13
    .parameter "file"
    .parameter "prefs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 533
    const/4 v6, 0x0

    .line 534
    .local v6, out:Ljava/io/BufferedWriter;
    const/4 v4, 0x0

    .line 536
    .local v4, lock:Ljava/nio/channels/FileLock;
    :try_start_2
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 537
    .local v5, ostream:Ljava/io/FileOutputStream;
    new-instance v7, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/OutputStreamWriter;

    const-string v10, "UTF-8"

    invoke-direct {v9, v5, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v7, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_70

    .line 538
    .end local v6           #out:Ljava/io/BufferedWriter;
    .local v7, out:Ljava/io/BufferedWriter;
    :try_start_13
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 539
    .local v0, channel:Ljava/nio/channels/FileChannel;
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v4

    .line 540
    const-string v9, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

    invoke-virtual {v7, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 541
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->newLine()V

    .line 542
    const-string v9, "<!DOCTYPE map SYSTEM \'http://java.sun.com/dtd/preferences.dtd\'>"

    invoke-virtual {v7, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 543
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->newLine()V

    .line 544
    invoke-virtual {p1}, Ljava/util/Properties;->size()I

    move-result v9

    if-nez v9, :cond_42

    .line 545
    sget-object v9, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    sget-object v10, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    invoke-static {v9, v10, v7}, Ljava/util/prefs/XMLParser;->exportEntries([Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 555
    :goto_38
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->flush()V
    :try_end_3b
    .catchall {:try_start_13 .. :try_end_3b} :catchall_67

    .line 557
    invoke-static {v4}, Ljava/util/prefs/XMLParser;->releaseQuietly(Ljava/nio/channels/FileLock;)V

    .line 558
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 560
    return-void

    .line 547
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-virtual {p1}, Ljava/util/Properties;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 548
    .local v2, keys:[Ljava/lang/String;
    array-length v3, v2

    .line 549
    .local v3, length:I
    new-array v8, v3, [Ljava/lang/String;

    .line 550
    .local v8, values:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_56
    if-ge v1, v3, :cond_63

    .line 551
    aget-object v9, v2, v1

    invoke-virtual {p1, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v1

    .line 550
    add-int/lit8 v1, v1, 0x1

    goto :goto_56

    .line 553
    :cond_63
    invoke-static {v2, v8, v7}, Ljava/util/prefs/XMLParser;->exportEntries([Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V
    :try_end_66
    .catchall {:try_start_42 .. :try_end_66} :catchall_67

    goto :goto_38

    .line 557
    .end local v0           #channel:Ljava/nio/channels/FileChannel;
    .end local v1           #i:I
    .end local v2           #keys:[Ljava/lang/String;
    .end local v3           #length:I
    .end local v8           #values:[Ljava/lang/String;
    :catchall_67
    move-exception v9

    move-object v6, v7

    .end local v5           #ostream:Ljava/io/FileOutputStream;
    .end local v7           #out:Ljava/io/BufferedWriter;
    .restart local v6       #out:Ljava/io/BufferedWriter;
    :goto_69
    invoke-static {v4}, Ljava/util/prefs/XMLParser;->releaseQuietly(Ljava/nio/channels/FileLock;)V

    .line 558
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v9

    .line 557
    :catchall_70
    move-exception v9

    goto :goto_69
.end method

.method private static flushIndent(ILjava/io/BufferedWriter;)V
    .registers 4
    .parameter "ind"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 287
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p0, :cond_b

    .line 288
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 290
    :cond_b
    return-void
.end method

.method private static flushPairs([Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V
    .registers 5
    .parameter "attrKeys"
    .parameter "attrValues"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_24

    .line 277
    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 278
    aget-object v1, p0, v0

    invoke-virtual {p2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 279
    const-string v1, "=\""

    invoke-virtual {p2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 280
    aget-object v1, p1, v0

    invoke-static {v1}, Ljava/util/prefs/XMLParser;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 281
    const-string v1, "\""

    invoke-virtual {p2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 276
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 283
    :cond_24
    return-void
.end method

.method private static flushStartTag(Ljava/lang/String;Ljava/io/BufferedWriter;)V
    .registers 3
    .parameter "tagName"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    sget v0, Ljava/util/prefs/XMLParser;->indent:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Ljava/util/prefs/XMLParser;->indent:I

    invoke-static {v0, p1}, Ljava/util/prefs/XMLParser;->flushIndent(ILjava/io/BufferedWriter;)V

    .line 305
    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p1, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 307
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    .line 309
    return-void
.end method

.method private static flushStartTag(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V
    .registers 5
    .parameter "tagName"
    .parameter "attrKeys"
    .parameter "attrValues"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 294
    sget v0, Ljava/util/prefs/XMLParser;->indent:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Ljava/util/prefs/XMLParser;->indent:I

    invoke-static {v0, p3}, Ljava/util/prefs/XMLParser;->flushIndent(ILjava/io/BufferedWriter;)V

    .line 295
    const-string v0, "<"

    invoke-virtual {p3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p3, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 297
    invoke-static {p1, p2, p3}, Ljava/util/prefs/XMLParser;->flushPairs([Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 298
    const-string v0, ">"

    invoke-virtual {p3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p3}, Ljava/io/BufferedWriter;->newLine()V

    .line 300
    return-void
.end method

.method private static htmlEncode(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "s"

    .prologue
    .line 312
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 313
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_37

    .line 314
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 315
    .local v0, c:C
    sparse-switch v0, :sswitch_data_3c

    .line 332
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 313
    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 317
    :sswitch_19
    const-string v3, "&lt;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 320
    :sswitch_1f
    const-string v3, "&gt;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 323
    :sswitch_25
    const-string v3, "&amp;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 326
    :sswitch_2b
    const-string v3, "&apos;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 329
    :sswitch_31
    const-string v3, "&quot;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 335
    .end local v0           #c:C
    :cond_37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 315
    :sswitch_data_3c
    .sparse-switch
        0x22 -> :sswitch_31
        0x26 -> :sswitch_25
        0x3c -> :sswitch_19
        0x3e -> :sswitch_1f
        0x5c -> :sswitch_2b
    .end sparse-switch
.end method

.method static importPrefs(Ljava/io/InputStream;)V
    .registers 11
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/prefs/InvalidPreferencesFormatException;
        }
    .end annotation

    .prologue
    .line 344
    :try_start_0
    sget-object v7, Ljava/util/prefs/XMLParser;->builder:Ljavax/xml/parsers/DocumentBuilder;

    new-instance v8, Lorg/xml/sax/InputSource;

    invoke-direct {v8, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v7, v8}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 348
    .local v0, doc:Lorg/w3c/dom/Document;
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    .line 349
    .local v2, preferences:Lorg/w3c/dom/Element;
    const-string v7, "EXTERNAL_XML_VERSION"

    invoke-interface {v2, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 350
    .local v6, version:Ljava/lang/String;
    if-eqz v6, :cond_48

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    const/high16 v8, 0x3f80

    cmpl-float v7, v7, v8

    if-lez v7, :cond_48

    .line 351
    new-instance v7, Ljava/util/prefs/InvalidPreferencesFormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Preferences version "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is not supported"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/prefs/InvalidPreferencesFormatException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_40
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_0 .. :try_end_40} :catch_40
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_40} :catch_71

    .line 368
    .end local v0           #doc:Lorg/w3c/dom/Document;
    .end local v2           #preferences:Lorg/w3c/dom/Element;
    .end local v6           #version:Ljava/lang/String;
    :catch_40
    move-exception v7

    move-object v1, v7

    .line 369
    .local v1, e:Ljavax/xml/parsers/FactoryConfigurationError;
    new-instance v7, Ljava/util/prefs/InvalidPreferencesFormatException;

    invoke-direct {v7, v1}, Ljava/util/prefs/InvalidPreferencesFormatException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 356
    .end local v1           #e:Ljavax/xml/parsers/FactoryConfigurationError;
    .restart local v0       #doc:Lorg/w3c/dom/Document;
    .restart local v2       #preferences:Lorg/w3c/dom/Element;
    .restart local v6       #version:Ljava/lang/String;
    :cond_48
    :try_start_48
    const-string v7, "root"

    invoke-interface {v2, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 358
    .local v4, root:Lorg/w3c/dom/Element;
    const/4 v3, 0x0

    .line 359
    .local v3, prefsRoot:Ljava/util/prefs/Preferences;
    const-string v7, "type"

    invoke-interface {v4, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 360
    .local v5, type:Ljava/lang/String;
    const-string v7, "user"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6c

    .line 361
    invoke-static {}, Ljava/util/prefs/Preferences;->userRoot()Ljava/util/prefs/Preferences;

    move-result-object v3

    .line 367
    :goto_68
    invoke-static {v3, v4}, Ljava/util/prefs/XMLParser;->loadNode(Ljava/util/prefs/Preferences;Lorg/w3c/dom/Element;)V

    .line 378
    return-void

    .line 363
    :cond_6c
    invoke-static {}, Ljava/util/prefs/Preferences;->systemRoot()Ljava/util/prefs/Preferences;
    :try_end_6f
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_48 .. :try_end_6f} :catch_40
    .catch Lorg/xml/sax/SAXException; {:try_start_48 .. :try_end_6f} :catch_71

    move-result-object v3

    goto :goto_68

    .line 370
    .end local v0           #doc:Lorg/w3c/dom/Document;
    .end local v2           #preferences:Lorg/w3c/dom/Element;
    .end local v3           #prefsRoot:Ljava/util/prefs/Preferences;
    .end local v4           #root:Lorg/w3c/dom/Element;
    .end local v5           #type:Ljava/lang/String;
    .end local v6           #version:Ljava/lang/String;
    :catch_71
    move-exception v7

    move-object v1, v7

    .line 371
    .local v1, e:Lorg/xml/sax/SAXException;
    new-instance v7, Ljava/util/prefs/InvalidPreferencesFormatException;

    invoke-direct {v7, v1}, Ljava/util/prefs/InvalidPreferencesFormatException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method static loadFilePrefs(Ljava/io/File;)Ljava/util/Properties;
    .registers 2
    .parameter "file"

    .prologue
    .line 476
    new-instance v0, Ljava/util/prefs/XMLParser$3;

    invoke-direct {v0, p0}, Ljava/util/prefs/XMLParser$3;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/Properties;

    return-object p0
.end method

.method static loadFilePrefsImpl(Ljava/io/File;)Ljava/util/Properties;
    .registers 10
    .parameter "file"

    .prologue
    .line 484
    new-instance v8, Ljava/util/Properties;

    invoke-direct {v8}, Ljava/util/Properties;-><init>()V

    .line 485
    .local v8, result:Ljava/util/Properties;
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_14

    .line 486
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    .end local p0
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :goto_12
    move-object p0, v8

    .line 514
    .end local v8           #result:Ljava/util/Properties;
    .local p0, result:Ljava/util/Properties;
    :goto_13
    return-object p0

    .line 487
    .restart local v8       #result:Ljava/util/Properties;
    .local p0, file:Ljava/io/File;
    :cond_14
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_93

    .line 488
    const/4 v1, 0x0

    .line 489
    .local v1, reader:Ljava/io/Reader;
    const/4 v6, 0x0

    .line 491
    .local v6, lock:Ljava/nio/channels/FileLock;
    :try_start_1c
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 492
    .local v0, fileInputStream:Ljava/io/FileInputStream;
    new-instance v7, Ljava/io/InputStreamReader;

    const-string p0, "UTF-8"

    .end local p0           #file:Ljava/io/File;
    invoke-direct {v7, v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_88
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_28} :catch_74
    .catch Lorg/xml/sax/SAXException; {:try_start_1c .. :try_end_28} :catch_7e

    .line 493
    .end local v1           #reader:Ljava/io/Reader;
    .local v7, reader:Ljava/io/Reader;
    :try_start_28
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 494
    .local v0, channel:Ljava/nio/channels/FileChannel;
    const-wide/16 v1, 0x0

    const-wide v3, 0x7fffffffffffffffL

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;
    :try_end_37
    .catchall {:try_start_28 .. :try_end_37} :catchall_98
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_37} :catch_aa
    .catch Lorg/xml/sax/SAXException; {:try_start_28 .. :try_end_37} :catch_a2

    move-result-object v3

    .line 495
    .end local v6           #lock:Ljava/nio/channels/FileLock;
    .local v3, lock:Ljava/nio/channels/FileLock;
    :try_start_38
    sget-object p0, Ljava/util/prefs/XMLParser;->builder:Ljavax/xml/parsers/DocumentBuilder;

    new-instance v0, Lorg/xml/sax/InputSource;

    .end local v0           #channel:Ljava/nio/channels/FileChannel;
    invoke-direct {v0, v7}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p0

    .line 496
    .local p0, doc:Lorg/w3c/dom/Document;
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p0

    .end local p0           #doc:Lorg/w3c/dom/Document;
    const-string v0, "entry"

    invoke-static {p0, v0}, Ljava/util/prefs/XMLParser;->selectNodeList(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    .line 497
    .local p0, entries:Lorg/w3c/dom/NodeList;
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    .line 498
    .local v2, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_52
    if-ge v0, v2, :cond_6c

    .line 499
    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 500
    .local v4, node:Lorg/w3c/dom/Element;
    const-string v1, "key"

    invoke-interface {v4, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 501
    .local v1, key:Ljava/lang/String;
    const-string v5, "value"

    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 502
    .local v4, value:Ljava/lang/String;
    invoke-virtual {v8, v1, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_69
    .catchall {:try_start_38 .. :try_end_69} :catchall_9d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_69} :catch_ae
    .catch Lorg/xml/sax/SAXException; {:try_start_38 .. :try_end_69} :catch_a6

    .line 498
    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    .line 508
    .end local v1           #key:Ljava/lang/String;
    .end local v4           #value:Ljava/lang/String;
    :cond_6c
    invoke-static {v3}, Ljava/util/prefs/XMLParser;->releaseQuietly(Ljava/nio/channels/FileLock;)V

    .line 509
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object p0, v8

    .end local v8           #result:Ljava/util/Properties;
    .local p0, result:Ljava/util/Properties;
    goto :goto_13

    .line 505
    .end local v0           #i:I
    .end local v2           #length:I
    .end local v3           #lock:Ljava/nio/channels/FileLock;
    .end local v7           #reader:Ljava/io/Reader;
    .end local p0           #result:Ljava/util/Properties;
    .local v1, reader:Ljava/io/Reader;
    .restart local v6       #lock:Ljava/nio/channels/FileLock;
    .restart local v8       #result:Ljava/util/Properties;
    :catch_74
    move-exception p0

    move-object p0, v6

    .end local v6           #lock:Ljava/nio/channels/FileLock;
    .local p0, lock:Ljava/nio/channels/FileLock;
    move-object v0, v1

    .line 508
    .end local v1           #reader:Ljava/io/Reader;
    .local v0, reader:Ljava/io/Reader;
    :goto_77
    invoke-static {p0}, Ljava/util/prefs/XMLParser;->releaseQuietly(Ljava/nio/channels/FileLock;)V

    .line 509
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_12

    .line 506
    .end local v0           #reader:Ljava/io/Reader;
    .end local p0           #lock:Ljava/nio/channels/FileLock;
    .restart local v1       #reader:Ljava/io/Reader;
    .restart local v6       #lock:Ljava/nio/channels/FileLock;
    :catch_7e
    move-exception p0

    move-object p0, v6

    .end local v6           #lock:Ljava/nio/channels/FileLock;
    .restart local p0       #lock:Ljava/nio/channels/FileLock;
    move-object v0, v1

    .line 508
    .end local v1           #reader:Ljava/io/Reader;
    .restart local v0       #reader:Ljava/io/Reader;
    :goto_81
    invoke-static {p0}, Ljava/util/prefs/XMLParser;->releaseQuietly(Ljava/nio/channels/FileLock;)V

    .line 509
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_12

    .line 508
    .end local v0           #reader:Ljava/io/Reader;
    .end local p0           #lock:Ljava/nio/channels/FileLock;
    .restart local v1       #reader:Ljava/io/Reader;
    .restart local v6       #lock:Ljava/nio/channels/FileLock;
    :catchall_88
    move-exception p0

    move-object v0, v1

    .end local v1           #reader:Ljava/io/Reader;
    .restart local v0       #reader:Ljava/io/Reader;
    move-object v1, p0

    move-object p0, v6

    .end local v6           #lock:Ljava/nio/channels/FileLock;
    .restart local p0       #lock:Ljava/nio/channels/FileLock;
    :goto_8c
    invoke-static {p0}, Ljava/util/prefs/XMLParser;->releaseQuietly(Ljava/nio/channels/FileLock;)V

    .line 509
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1

    .line 512
    .end local v0           #reader:Ljava/io/Reader;
    .local p0, file:Ljava/io/File;
    :cond_93
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto/16 :goto_12

    .line 508
    .end local p0           #file:Ljava/io/File;
    .restart local v6       #lock:Ljava/nio/channels/FileLock;
    .restart local v7       #reader:Ljava/io/Reader;
    :catchall_98
    move-exception p0

    move-object v1, p0

    move-object v0, v7

    .end local v7           #reader:Ljava/io/Reader;
    .restart local v0       #reader:Ljava/io/Reader;
    move-object p0, v6

    .end local v6           #lock:Ljava/nio/channels/FileLock;
    .local p0, lock:Ljava/nio/channels/FileLock;
    goto :goto_8c

    .end local v0           #reader:Ljava/io/Reader;
    .end local p0           #lock:Ljava/nio/channels/FileLock;
    .restart local v3       #lock:Ljava/nio/channels/FileLock;
    .restart local v7       #reader:Ljava/io/Reader;
    :catchall_9d
    move-exception p0

    move-object v1, p0

    move-object v0, v7

    .end local v7           #reader:Ljava/io/Reader;
    .restart local v0       #reader:Ljava/io/Reader;
    move-object p0, v3

    .end local v3           #lock:Ljava/nio/channels/FileLock;
    .restart local p0       #lock:Ljava/nio/channels/FileLock;
    goto :goto_8c

    .line 506
    .end local v0           #reader:Ljava/io/Reader;
    .end local p0           #lock:Ljava/nio/channels/FileLock;
    .restart local v6       #lock:Ljava/nio/channels/FileLock;
    .restart local v7       #reader:Ljava/io/Reader;
    :catch_a2
    move-exception p0

    move-object p0, v6

    .end local v6           #lock:Ljava/nio/channels/FileLock;
    .restart local p0       #lock:Ljava/nio/channels/FileLock;
    move-object v0, v7

    .end local v7           #reader:Ljava/io/Reader;
    .restart local v0       #reader:Ljava/io/Reader;
    goto :goto_81

    .end local v0           #reader:Ljava/io/Reader;
    .end local p0           #lock:Ljava/nio/channels/FileLock;
    .restart local v3       #lock:Ljava/nio/channels/FileLock;
    .restart local v7       #reader:Ljava/io/Reader;
    :catch_a6
    move-exception p0

    move-object p0, v3

    .end local v3           #lock:Ljava/nio/channels/FileLock;
    .restart local p0       #lock:Ljava/nio/channels/FileLock;
    move-object v0, v7

    .end local v7           #reader:Ljava/io/Reader;
    .restart local v0       #reader:Ljava/io/Reader;
    goto :goto_81

    .line 505
    .end local v0           #reader:Ljava/io/Reader;
    .end local p0           #lock:Ljava/nio/channels/FileLock;
    .restart local v6       #lock:Ljava/nio/channels/FileLock;
    .restart local v7       #reader:Ljava/io/Reader;
    :catch_aa
    move-exception p0

    move-object p0, v6

    .end local v6           #lock:Ljava/nio/channels/FileLock;
    .restart local p0       #lock:Ljava/nio/channels/FileLock;
    move-object v0, v7

    .end local v7           #reader:Ljava/io/Reader;
    .restart local v0       #reader:Ljava/io/Reader;
    goto :goto_77

    .end local v0           #reader:Ljava/io/Reader;
    .end local p0           #lock:Ljava/nio/channels/FileLock;
    .restart local v3       #lock:Ljava/nio/channels/FileLock;
    .restart local v7       #reader:Ljava/io/Reader;
    :catch_ae
    move-exception p0

    move-object p0, v3

    .end local v3           #lock:Ljava/nio/channels/FileLock;
    .restart local p0       #lock:Ljava/nio/channels/FileLock;
    move-object v0, v7

    .end local v7           #reader:Ljava/io/Reader;
    .restart local v0       #reader:Ljava/io/Reader;
    goto :goto_77
.end method

.method private static loadNode(Ljava/util/prefs/Preferences;Lorg/w3c/dom/Element;)V
    .registers 16
    .parameter "prefs"
    .parameter "node"

    .prologue
    .line 386
    const-string v12, "node"

    invoke-static {p1, v12}, Ljava/util/prefs/XMLParser;->selectNodeList(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 387
    .local v3, children:Lorg/w3c/dom/NodeList;
    const-string v12, "map/entry"

    invoke-static {p1, v12}, Ljava/util/prefs/XMLParser;->selectNodeList(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 389
    .local v4, entries:Lorg/w3c/dom/NodeList;
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    .line 390
    .local v2, childNumber:I
    new-array v10, v2, [Ljava/util/prefs/Preferences;

    .line 391
    .local v10, prefChildren:[Ljava/util/prefs/Preferences;
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    .line 392
    .local v6, entryNumber:I
    move-object v0, p0

    check-cast v0, Ljava/util/prefs/AbstractPreferences;

    move-object v12, v0

    iget-object v13, v12, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v13

    .line 393
    :try_start_1d
    move-object v0, p0

    check-cast v0, Ljava/util/prefs/AbstractPreferences;

    move-object v12, v0

    invoke-virtual {v12}, Ljava/util/prefs/AbstractPreferences;->isRemoved()Z

    move-result v12

    if-eqz v12, :cond_29

    .line 394
    monitor-exit v13

    .line 414
    .end local p0
    :cond_28
    return-void

    .line 396
    .restart local p0
    :cond_29
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2a
    if-ge v7, v6, :cond_44

    .line 397
    invoke-interface {v4, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 398
    .local v5, entry:Lorg/w3c/dom/Element;
    const-string v12, "key"

    invoke-interface {v5, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 399
    .local v8, key:Ljava/lang/String;
    const-string v12, "value"

    invoke-interface {v5, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 400
    .local v11, value:Ljava/lang/String;
    invoke-virtual {p0, v8, v11}, Ljava/util/prefs/Preferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    add-int/lit8 v7, v7, 0x1

    goto :goto_2a

    .line 403
    .end local v5           #entry:Lorg/w3c/dom/Element;
    .end local v8           #key:Ljava/lang/String;
    .end local v11           #value:Ljava/lang/String;
    :cond_44
    const/4 v7, 0x0

    :goto_45
    if-ge v7, v2, :cond_5c

    .line 404
    invoke-interface {v3, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 405
    .local v1, child:Lorg/w3c/dom/Element;
    const-string v12, "name"

    invoke-interface {v1, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 406
    .local v9, name:Ljava/lang/String;
    invoke-virtual {p0, v9}, Ljava/util/prefs/Preferences;->node(Ljava/lang/String;)Ljava/util/prefs/Preferences;

    move-result-object v12

    aput-object v12, v10, v7

    .line 403
    add-int/lit8 v7, v7, 0x1

    goto :goto_45

    .line 408
    .end local v1           #child:Lorg/w3c/dom/Element;
    .end local v9           #name:Ljava/lang/String;
    :cond_5c
    monitor-exit v13
    :try_end_5d
    .catchall {:try_start_1d .. :try_end_5d} :catchall_6e

    .line 411
    const/4 v7, 0x0

    .end local p0
    :goto_5e
    if-ge v7, v2, :cond_28

    .line 412
    aget-object v12, v10, v7

    invoke-interface {v3, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Element;

    invoke-static {v12, p0}, Ljava/util/prefs/XMLParser;->loadNode(Ljava/util/prefs/Preferences;Lorg/w3c/dom/Element;)V

    .line 411
    add-int/lit8 v7, v7, 0x1

    goto :goto_5e

    .line 408
    .end local v7           #i:I
    .restart local p0
    :catchall_6e
    move-exception v12

    :try_start_6f
    monitor-exit v13
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw v12
.end method

.method private static releaseQuietly(Ljava/nio/channels/FileLock;)V
    .registers 2
    .parameter "lock"

    .prologue
    .line 563
    if-nez p0, :cond_3

    .line 569
    :goto_2
    return-void

    .line 567
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_2

    .line 568
    :catch_7
    move-exception v0

    goto :goto_2
.end method

.method private static selectNodeList(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .registers 16
    .parameter "documentElement"
    .parameter "string"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 421
    const/4 v8, 0x0

    .line 423
    .local v8, result:Lorg/w3c/dom/NodeList;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 425
    .local v3, input:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    const-string v10, "/"

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 427
    .local v7, path:[Ljava/lang/String;
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 429
    .local v1, childNodes:Lorg/w3c/dom/NodeList;
    aget-object v10, v7, v12

    const-string v11, "entry"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_26

    aget-object v10, v7, v12

    const-string v11, "node"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_51

    .line 430
    :cond_26
    const/4 v2, 0x0

    .local v2, i:I
    :goto_27
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v2, v10, :cond_b8

    .line 431
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 432
    .local v5, next:Lorg/w3c/dom/Node;
    instance-of v10, v5, Lorg/w3c/dom/Element;

    if-eqz v10, :cond_4e

    .line 433
    move-object v0, v5

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v10, v0

    invoke-interface {v10}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v10

    aget-object v11, v7, v12

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4e

    instance-of v10, v5, Lorg/w3c/dom/Node;

    if-eqz v10, :cond_4e

    .line 435
    check-cast v5, Lorg/w3c/dom/Node;

    .end local v5           #next:Lorg/w3c/dom/Node;
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    :cond_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 439
    .end local v2           #i:I
    :cond_51
    aget-object v10, v7, v12

    const-string v11, "map"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b8

    aget-object v10, v7, v13

    const-string v11, "entry"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b8

    .line 440
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_66
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v2, v10, :cond_b8

    .line 441
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 442
    .restart local v5       #next:Lorg/w3c/dom/Node;
    instance-of v10, v5, Lorg/w3c/dom/Element;

    if-eqz v10, :cond_b5

    .line 443
    move-object v0, v5

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v10, v0

    invoke-interface {v10}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v10

    aget-object v11, v7, v12

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b5

    instance-of v10, v5, Lorg/w3c/dom/Node;

    if-eqz v10, :cond_b5

    .line 445
    check-cast v5, Lorg/w3c/dom/Node;

    .end local v5           #next:Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 446
    .local v6, nextChildNodes:Lorg/w3c/dom/NodeList;
    const/4 v4, 0x0

    .local v4, j:I
    :goto_8f
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v4, v10, :cond_b5

    .line 447
    invoke-interface {v6, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 448
    .local v9, subnext:Lorg/w3c/dom/Node;
    instance-of v10, v9, Lorg/w3c/dom/Element;

    if-eqz v10, :cond_b2

    .line 449
    move-object v0, v9

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v10, v0

    invoke-interface {v10}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v10

    aget-object v11, v7, v13

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b2

    .line 450
    check-cast v9, Lorg/w3c/dom/Node;

    .end local v9           #subnext:Lorg/w3c/dom/Node;
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    :cond_b2
    add-int/lit8 v4, v4, 0x1

    goto :goto_8f

    .line 440
    .end local v4           #j:I
    .end local v6           #nextChildNodes:Lorg/w3c/dom/NodeList;
    :cond_b5
    add-int/lit8 v2, v2, 0x1

    goto :goto_66

    .line 459
    .end local v2           #i:I
    :cond_b8
    new-instance v8, Ljava/util/prefs/NodeSet;

    .end local v8           #result:Lorg/w3c/dom/NodeList;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/util/prefs/NodeSet;-><init>(Ljava/util/Iterator;)V

    .line 461
    .restart local v8       #result:Lorg/w3c/dom/NodeList;
    return-object v8
.end method
