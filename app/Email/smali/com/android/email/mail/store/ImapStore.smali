.class public Lcom/android/email/mail/store/ImapStore;
.super Lcom/android/email/mail/Store;
.source "ImapStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/mail/store/ImapStore$ImapException;,
        Lcom/android/email/mail/store/ImapStore$ImapMessage;,
        Lcom/android/email/mail/store/ImapStore$ImapConnection;,
        Lcom/android/email/mail/store/ImapStore$ImapFolder;
    }
.end annotation


# static fields
.field private static final MODIFIED_UTF_7_CHARSET:Ljava/nio/charset/Charset;

.field private static final PERMANENT_FLAGS:[Lcom/android/emailcommon/mail/Flag;

.field private static sImapId:Ljava/lang/String;


# instance fields
.field private final mConnectionPool:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/android/email/mail/store/ImapStore$ImapConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mFolderCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/email/mail/store/ImapStore$ImapFolder;",
            ">;"
        }
    .end annotation
.end field

.field private mIdPhrase:Ljava/lang/String;

.field private mLoginPhrase:Ljava/lang/String;

.field private final mNextCommandTag:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mPassword:Ljava/lang/String;

.field mPathPrefix:Ljava/lang/String;

.field mPathSeparator:Ljava/lang/String;

.field private mRootTransport:Lcom/android/email/mail/Transport;

.field private mUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 111
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/emailcommon/mail/Flag;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/mail/store/ImapStore;->PERMANENT_FLAGS:[Lcom/android/emailcommon/mail/Flag;

    .line 119
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/mail/store/ImapStore;->sImapId:Ljava/lang/String;

    .line 129
    new-instance v0, Lcom/beetstra/jutf7/CharsetProvider;

    invoke-direct {v0}, Lcom/beetstra/jutf7/CharsetProvider;-><init>()V

    const-string v1, "X-RFC-3501"

    invoke-virtual {v0, v1}, Lcom/beetstra/jutf7/CharsetProvider;->charsetForName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/email/mail/store/ImapStore;->MODIFIED_UTF_7_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .parameter "context"
    .parameter "uriString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 166
    invoke-direct {p0}, Lcom/android/email/mail/Store;-><init>()V

    .line 118
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/email/mail/store/ImapStore;->mIdPhrase:Ljava/lang/String;

    .line 123
    new-instance v7, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v7}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v7, p0, Lcom/android/email/mail/store/ImapStore;->mConnectionPool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 138
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/android/email/mail/store/ImapStore;->mFolderCache:Ljava/util/HashMap;

    .line 146
    new-instance v7, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v7, v10}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v7, p0, Lcom/android/email/mail/store/ImapStore;->mNextCommandTag:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 167
    iput-object p1, p0, Lcom/android/email/mail/store/ImapStore;->mContext:Landroid/content/Context;

    .line 170
    :try_start_0
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .local v4, uri:Ljava/net/URI;
    invoke-virtual {v4}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, scheme:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v7, "imap"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 177
    :cond_0
    new-instance v7, Lcom/android/emailcommon/mail/MessagingException;

    const-string v8, "Unsupported protocol"

    invoke-direct {v7, v8}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 171
    .end local v2           #scheme:Ljava/lang/String;
    .end local v4           #uri:Ljava/net/URI;
    :catch_0
    move-exception v7

    move-object v5, v7

    .line 172
    .local v5, use:Ljava/net/URISyntaxException;
    new-instance v7, Lcom/android/emailcommon/mail/MessagingException;

    const-string v8, "Invalid ImapStore URI"

    invoke-direct {v7, v8, v5}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 180
    .end local v5           #use:Ljava/net/URISyntaxException;
    .restart local v2       #scheme:Ljava/lang/String;
    .restart local v4       #uri:Ljava/net/URI;
    :cond_1
    const/4 v0, 0x0

    .line 181
    .local v0, connectionSecurity:I
    const/16 v1, 0x8f

    .line 183
    .local v1, defaultPort:I
    const-string v7, "+ssl"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 184
    const/4 v0, 0x1

    .line 185
    const/16 v1, 0x3e1

    .line 189
    :cond_2
    :goto_0
    const-string v7, "+trustallcerts"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 191
    .local v3, trustCertificates:Z
    new-instance v7, Lcom/android/email/mail/transport/MailTransport;

    const-string v8, "IMAP"

    invoke-direct {v7, v8}, Lcom/android/email/mail/transport/MailTransport;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/email/mail/store/ImapStore;->mRootTransport:Lcom/android/email/mail/Transport;

    .line 192
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore;->mRootTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v7, v4, v1}, Lcom/android/email/mail/Transport;->setUri(Ljava/net/URI;I)V

    .line 193
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore;->mRootTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v7, v0, v3}, Lcom/android/email/mail/Transport;->setSecurity(IZ)V

    .line 195
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore;->mRootTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v7}, Lcom/android/email/mail/Transport;->getUserInfoParts()[Ljava/lang/String;

    move-result-object v6

    .line 196
    .local v6, userInfoParts:[Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 197
    aget-object v7, v6, v10

    iput-object v7, p0, Lcom/android/email/mail/store/ImapStore;->mUsername:Ljava/lang/String;

    .line 198
    array-length v7, v6

    if-le v7, v9, :cond_3

    .line 199
    aget-object v7, v6, v9

    iput-object v7, p0, Lcom/android/email/mail/store/ImapStore;->mPassword:Ljava/lang/String;

    .line 203
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LOGIN "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/email/mail/store/ImapStore;->mUsername:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/email/mail/store/ImapStore;->mPassword:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/emailcommon/utility/Utility;->imapQuoted(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/email/mail/store/ImapStore;->mLoginPhrase:Ljava/lang/String;

    .line 208
    :cond_3
    invoke-virtual {v4}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v4}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 209
    invoke-virtual {v4}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    .line 211
    :cond_4
    return-void

    .line 186
    .end local v3           #trustCertificates:Z
    .end local v6           #userInfoParts:[Ljava/lang/String;
    :cond_5
    const-string v7, "+tls"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 187
    const/4 v0, 0x2

    goto :goto_0
.end method

.method static synthetic access$000()[Lcom/android/emailcommon/mail/Flag;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/android/email/mail/store/ImapStore;->PERMANENT_FLAGS:[Lcom/android/emailcommon/mail/Flag;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/mail/store/ImapStore;)Lcom/android/email/mail/Transport;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->mRootTransport:Lcom/android/email/mail/Transport;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/mail/store/ImapStore;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->mNextCommandTag:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/mail/store/ImapStore;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/email/mail/store/ImapStore;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/email/mail/store/ImapStore;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->mIdPhrase:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/email/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/email/mail/store/ImapStore;->mIdPhrase:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/email/mail/store/ImapStore;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->mLoginPhrase:Ljava/lang/String;

    return-object v0
.end method

.method static decodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "name"
    .parameter "prefix"

    .prologue
    .line 555
    sget-object v1, Lcom/android/email/mail/store/ImapStore;->MODIFIED_UTF_7_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {p0}, Lcom/android/emailcommon/utility/Utility;->toAscii(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 556
    .local v0, folder:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 557
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 559
    :cond_0
    return-object v0
.end method

.method static encodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "name"
    .parameter "prefix"

    .prologue
    .line 534
    const-string v2, "INBOX"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, p0

    .line 546
    :goto_0
    return-object v2

    .line 537
    :cond_0
    if-eqz p1, :cond_1

    .line 538
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 542
    :cond_1
    sget-object v2, Lcom/android/email/mail/store/ImapStore;->MODIFIED_UTF_7_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v2, p0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 543
    .local v1, bb:Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    new-array v0, v2, [B

    .line 544
    .local v0, b:[B
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 546
    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->fromAscii([B)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method static getImapId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 255
    const-class v7, Lcom/android/email/mail/store/ImapStore;

    monitor-enter v7

    .line 256
    :try_start_0
    sget-object v0, Lcom/android/email/mail/store/ImapStore;->sImapId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 257
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 259
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 260
    if-nez v0, :cond_2

    const-string v0, ""

    move-object v6, v0

    .line 262
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sget-object v2, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->ID:Ljava/lang/String;

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/android/email/mail/store/ImapStore;->makeCommonImapId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/mail/store/ImapStore;->sImapId:Ljava/lang/String;

    .line 266
    :cond_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/email/mail/store/ImapStore;->sImapId:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 273
    invoke-static {p0}, Lcom/android/email/VendorPolicyLoader;->getInstance(Landroid/content/Context;)Lcom/android/email/VendorPolicyLoader;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/email/VendorPolicyLoader;->getImapIdValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 275
    if-eqz v1, :cond_1

    .line 276
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    :cond_1
    :try_start_1
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/Preferences;->getDeviceUID()Ljava/lang/String;

    move-result-object v1

    .line 284
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 285
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 286
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 287
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 288
    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 289
    const-string v2, " \"AGUID\" \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 295
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 266
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 292
    :catch_0
    move-exception v1

    .line 293
    const-string v1, "Email"

    const-string v2, "couldn\'t obtain SHA-1 hash for device UID"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    move-object v6, v0

    goto :goto_0
.end method

.method static joinMessageUids([Lcom/android/emailcommon/mail/Message;)Ljava/lang/String;
    .locals 7
    .parameter "messages"

    .prologue
    .line 566
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 567
    .local v5, sb:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 568
    .local v4, notFirst:Z
    move-object v0, p0

    .local v0, arr$:[Lcom/android/emailcommon/mail/Message;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 569
    .local v3, m:Lcom/android/emailcommon/mail/Message;
    if-eqz v4, :cond_0

    .line 570
    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 572
    :cond_0
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    const/4 v4, 0x1

    .line 568
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 575
    .end local v3           #m:Lcom/android/emailcommon/mail/Message;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method static makeCommonImapId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "packageName"
    .parameter "version"
    .parameter "codeName"
    .parameter "model"
    .parameter "id"
    .parameter "vendor"
    .parameter "networkOperator"

    .prologue
    .line 320
    const-string v2, "[^a-zA-Z0-9-_\\+=;:\\.,/ ]"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 321
    .local v0, p:Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 322
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 323
    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 324
    invoke-virtual {v0, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 325
    invoke-virtual {v0, p4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 326
    invoke-virtual {v0, p5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 327
    invoke-virtual {v0, p6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    .line 330
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "\"name\" \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 331
    .local v1, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 332
    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 335
    const-string v2, " \"os\" \"android\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 338
    const-string v2, " \"os-version\" \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 339
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 340
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 346
    :goto_0
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 347
    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 348
    invoke-virtual {v1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 350
    :cond_0
    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 353
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 354
    const-string v2, " \"vendor\" \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 355
    invoke-virtual {v1, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 356
    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 360
    :cond_1
    const-string v2, "REL"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 361
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 362
    const-string v2, " \"x-android-device-model\" \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 363
    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 364
    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 369
    :cond_2
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 370
    const-string v2, " \"x-android-mobile-net-operator\" \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 371
    invoke-virtual {v1, p6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 372
    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 375
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 343
    :cond_4
    const-string v2, "1.0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;
    .locals 1
    .parameter "uri"
    .parameter "context"
    .parameter "callbacks"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 153
    new-instance v0, Lcom/android/email/mail/store/ImapStore;

    invoke-direct {v0, p1, p0}, Lcom/android/email/mail/store/ImapStore;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public checkSettings()Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 466
    const/4 v3, -0x1

    .line 467
    .local v3, result:I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 468
    .local v0, bundle:Landroid/os/Bundle;
    new-instance v1, Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-direct {v1, p0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;-><init>(Lcom/android/email/mail/store/ImapStore;)V

    .line 470
    .local v1, connection:Lcom/android/email/mail/store/ImapStore$ImapConnection;
    :try_start_0
    invoke-virtual {v1}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->open()V

    .line 471
    invoke-virtual {v1}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    invoke-virtual {v1}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    .line 478
    :goto_0
    const-string v4, "validate_result_code"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 479
    return-object v0

    .line 472
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 473
    .local v2, ioe:Ljava/io/IOException;
    :try_start_1
    const-string v4, "validate_error_message"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 474
    const/4 v3, 0x1

    .line 476
    invoke-virtual {v1}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    goto :goto_0

    .end local v2           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    throw v4
.end method

.method ensurePrefixIsValid()V
    .locals 2

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->mPathSeparator:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore;->mPathSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore;->mPathSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    .line 493
    :cond_0
    return-void
.end method

.method public getAllFolders()[Lcom/android/emailcommon/mail/Folder;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore;->getConnection()Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-result-object v2

    .line 396
    .local v2, connection:Lcom/android/email/mail/store/ImapStore$ImapConnection;
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 399
    .local v5, folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Folder;>;"
    const-string v12, "NOOP"

    invoke-virtual {v2, v12}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    .line 400
    const-string v7, "LIST \"\" \"*\""

    .line 401
    .local v7, imapCommand:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    if-eqz v12, :cond_0

    .line 402
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "LIST \"\" \""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "*\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 404
    :cond_0
    const/16 v12, 0xc8

    invoke-virtual {v2, v7, v12}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v11

    .line 405
    .local v11, responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 407
    .local v10, response:Lcom/android/email/mail/store/imap/ImapResponse;
    const/4 v12, 0x0

    const-string v13, "LIST"

    invoke-virtual {v10, v12, v13}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 408
    const/4 v8, 0x1

    .line 411
    .local v8, includeFolder:Z
    const/4 v12, 0x3

    invoke-virtual {v10, v12}, Lcom/android/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v3

    .line 412
    .local v3, encodedFolder:Lcom/android/email/mail/store/imap/ImapString;
    invoke-virtual {v3}, Lcom/android/email/mail/store/imap/ImapString;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1

    .line 413
    invoke-virtual {v3}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/android/email/mail/store/ImapStore;->decodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 414
    .local v4, folder:Ljava/lang/String;
    const-string v12, "INBOX"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 419
    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Lcom/android/email/mail/store/imap/ImapResponse;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v12

    const-string v13, "\\NOSELECT"

    invoke-virtual {v12, v13}, Lcom/android/email/mail/store/imap/ImapList;->contains(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 420
    const/4 v8, 0x0

    .line 422
    :cond_2
    if-eqz v8, :cond_1

    .line 423
    invoke-virtual {p0, v4}, Lcom/android/email/mail/store/ImapStore;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/email/mail/AsusTooManyFolderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 429
    .end local v3           #encodedFolder:Lcom/android/email/mail/store/imap/ImapString;
    .end local v4           #folder:Ljava/lang/String;
    .end local v5           #folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Folder;>;"
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #imapCommand:Ljava/lang/String;
    .end local v8           #includeFolder:Z
    .end local v10           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .end local v11           #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :catch_0
    move-exception v12

    move-object v1, v12

    .line 436
    .local v1, atmfe:Lcom/android/email/mail/AsusTooManyFolderException;
    :try_start_1
    invoke-virtual {v2}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->close()V

    .line 437
    invoke-virtual {v2}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    .line 438
    const/4 v2, 0x0

    .line 444
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 445
    .restart local v5       #folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Folder;>;"
    const-string v12, "INBOX"

    invoke-virtual {p0, v12}, Lcom/android/email/mail/store/ImapStore;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    const/4 v12, 0x0

    new-array v12, v12, [Lcom/android/emailcommon/mail/Folder;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lcom/android/emailcommon/mail/Folder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 457
    if-eqz v2, :cond_3

    .line 458
    throw v2

    .line 459
    throw p0

    .end local v1           #atmfe:Lcom/android/email/mail/AsusTooManyFolderException;
    :cond_3
    :goto_1
    return-object v12

    .line 427
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v7       #imapCommand:Ljava/lang/String;
    .restart local v11       #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :cond_4
    :try_start_2
    const-string v12, "INBOX"

    invoke-virtual {p0, v12}, Lcom/android/email/mail/store/ImapStore;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    const/4 v12, 0x0

    new-array v12, v12, [Lcom/android/emailcommon/mail/Folder;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lcom/android/emailcommon/mail/Folder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/android/email/mail/AsusTooManyFolderException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 457
    if-eqz v2, :cond_3

    .line 458
    invoke-virtual {v2}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    .line 459
    invoke-virtual {p0, v2}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    goto :goto_1

    .line 447
    .end local v5           #folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Folder;>;"
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #imapCommand:Ljava/lang/String;
    .end local v11           #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :catch_1
    move-exception v12

    move-object v9, v12

    .line 448
    .local v9, ioe:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v2}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->close()V

    .line 449
    new-instance v12, Lcom/android/emailcommon/mail/MessagingException;

    const-string v13, "Unable to get folder list."

    invoke-direct {v12, v13, v9}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 457
    .end local v9           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v12

    if-eqz v2, :cond_5

    .line 458
    invoke-virtual {v2}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    .line 459
    invoke-virtual {p0, v2}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    :cond_5
    throw v12

    .line 450
    :catch_2
    move-exception v12

    move-object v0, v12

    .line 453
    .local v0, afe:Lcom/android/emailcommon/mail/AuthenticationFailedException;
    :try_start_4
    invoke-virtual {v2}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    .line 454
    const/4 v2, 0x0

    .line 455
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method getConnection()Lcom/android/email/mail/store/ImapStore$ImapConnection;
    .locals 2

    .prologue
    .line 499
    const/4 v0, 0x0

    .line 500
    .local v0, connection:Lcom/android/email/mail/store/ImapStore$ImapConnection;
    :goto_0
    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore;->mConnectionPool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #connection:Lcom/android/email/mail/store/ImapStore$ImapConnection;
    check-cast v0, Lcom/android/email/mail/store/ImapStore$ImapConnection;

    .restart local v0       #connection:Lcom/android/email/mail/store/ImapStore$ImapConnection;
    if-eqz v0, :cond_0

    .line 502
    :try_start_0
    const-string v1, "NOOP"

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 509
    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    .line 514
    :cond_0
    if-nez v0, :cond_1

    .line 515
    new-instance v0, Lcom/android/email/mail/store/ImapStore$ImapConnection;

    .end local v0           #connection:Lcom/android/email/mail/store/ImapStore$ImapConnection;
    invoke-direct {v0, p0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;-><init>(Lcom/android/email/mail/store/ImapStore;)V

    .line 517
    .restart local v0       #connection:Lcom/android/email/mail/store/ImapStore$ImapConnection;
    :cond_1
    return-object v0

    .line 504
    :catch_0
    move-exception v1

    .line 509
    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    .line 511
    :goto_1
    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->close()V

    .line 512
    const/4 v0, 0x0

    goto :goto_0

    .line 506
    :catch_1
    move-exception v1

    .line 509
    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    throw v1
.end method

.method getConnectionPoolForTest()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/email/mail/store/ImapStore$ImapConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->mConnectionPool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method public getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;
    .locals 3
    .parameter "name"

    .prologue
    .line 382
    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore;->mFolderCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 383
    :try_start_0
    iget-object v2, p0, Lcom/android/email/mail/store/ImapStore;->mFolderCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/store/ImapStore$ImapFolder;

    .line 384
    .local v0, folder:Lcom/android/email/mail/store/ImapStore$ImapFolder;
    if-nez v0, :cond_0

    .line 385
    new-instance v0, Lcom/android/email/mail/store/ImapStore$ImapFolder;

    .end local v0           #folder:Lcom/android/email/mail/store/ImapStore$ImapFolder;
    invoke-direct {v0, p0, p1}, Lcom/android/email/mail/store/ImapStore$ImapFolder;-><init>(Lcom/android/email/mail/store/ImapStore;Ljava/lang/String;)V

    .line 386
    .restart local v0       #folder:Lcom/android/email/mail/store/ImapStore$ImapFolder;
    iget-object v2, p0, Lcom/android/email/mail/store/ImapStore;->mFolderCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    :cond_0
    monitor-exit v1

    .line 389
    return-object v0

    .line 388
    .end local v0           #folder:Lcom/android/email/mail/store/ImapStore$ImapFolder;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method poolConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V
    .locals 1
    .parameter "connection"

    .prologue
    .line 524
    if-eqz p1, :cond_0

    .line 525
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->mConnectionPool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 527
    :cond_0
    return-void
.end method

.method setTransport(Lcom/android/email/mail/Transport;)V
    .locals 0
    .parameter "testTransport"

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/email/mail/store/ImapStore;->mRootTransport:Lcom/android/email/mail/Transport;

    .line 225
    return-void
.end method
