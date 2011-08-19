.class public Ljava/util/ResourceBundle$Control;
.super Ljava/lang/Object;
.source "ResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Control"
.end annotation


# static fields
.field public static final FORMAT_CLASS:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FORMAT_CLASS_CONTROL:Ljava/util/ResourceBundle$Control; = null

.field public static final FORMAT_DEFAULT:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FORMAT_DEFAULT_CONTROL:Ljava/util/ResourceBundle$Control; = null

.field public static final FORMAT_PROPERTIES:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FORMAT_PROPERTIES_CONTROL:Ljava/util/ResourceBundle$Control; = null

.field static JAVACLASS:Ljava/lang/String; = null

.field static JAVAPROPERTIES:Ljava/lang/String; = null

.field public static final TTL_DONT_CACHE:J = -0x1L

.field public static final TTL_NO_EXPIRATION_CONTROL:J = -0x2L

.field static listClass:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static listDefault:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static listProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field format:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 700
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ljava/util/ResourceBundle$Control;->listDefault:Ljava/util/List;

    .line 702
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ljava/util/ResourceBundle$Control;->listClass:Ljava/util/List;

    .line 704
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ljava/util/ResourceBundle$Control;->listProperties:Ljava/util/List;

    .line 706
    const-string v0, "java.class"

    sput-object v0, Ljava/util/ResourceBundle$Control;->JAVACLASS:Ljava/lang/String;

    .line 708
    const-string v0, "java.properties"

    sput-object v0, Ljava/util/ResourceBundle$Control;->JAVAPROPERTIES:Ljava/lang/String;

    .line 711
    sget-object v0, Ljava/util/ResourceBundle$Control;->listDefault:Ljava/util/List;

    sget-object v1, Ljava/util/ResourceBundle$Control;->JAVACLASS:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 712
    sget-object v0, Ljava/util/ResourceBundle$Control;->listDefault:Ljava/util/List;

    sget-object v1, Ljava/util/ResourceBundle$Control;->JAVAPROPERTIES:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 713
    sget-object v0, Ljava/util/ResourceBundle$Control;->listClass:Ljava/util/List;

    sget-object v1, Ljava/util/ResourceBundle$Control;->JAVACLASS:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 714
    sget-object v0, Ljava/util/ResourceBundle$Control;->listProperties:Ljava/util/List;

    sget-object v1, Ljava/util/ResourceBundle$Control;->JAVAPROPERTIES:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 720
    sget-object v0, Ljava/util/ResourceBundle$Control;->listDefault:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_DEFAULT:Ljava/util/List;

    .line 726
    sget-object v0, Ljava/util/ResourceBundle$Control;->listClass:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_CLASS:Ljava/util/List;

    .line 732
    sget-object v0, Ljava/util/ResourceBundle$Control;->listProperties:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_PROPERTIES:Ljava/util/List;

    .line 745
    new-instance v0, Ljava/util/ResourceBundle$SimpleControl;

    sget-object v1, Ljava/util/ResourceBundle$Control;->JAVAPROPERTIES:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/ResourceBundle$SimpleControl;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_PROPERTIES_CONTROL:Ljava/util/ResourceBundle$Control;

    .line 748
    new-instance v0, Ljava/util/ResourceBundle$SimpleControl;

    sget-object v1, Ljava/util/ResourceBundle$Control;->JAVACLASS:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/ResourceBundle$SimpleControl;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_CLASS_CONTROL:Ljava/util/ResourceBundle$Control;

    .line 751
    new-instance v0, Ljava/util/ResourceBundle$Control;

    invoke-direct {v0}, Ljava/util/ResourceBundle$Control;-><init>()V

    sput-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_DEFAULT_CONTROL:Ljava/util/ResourceBundle$Control;

    return-void
.end method

.method protected constructor <init>()V
    .registers 3

    .prologue
    .line 760
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 761
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ljava/util/ResourceBundle$Control;->listClass:Ljava/util/List;

    .line 762
    sget-object v0, Ljava/util/ResourceBundle$Control;->listClass:Ljava/util/List;

    sget-object v1, Ljava/util/ResourceBundle$Control;->JAVACLASS:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 763
    sget-object v0, Ljava/util/ResourceBundle$Control;->listClass:Ljava/util/List;

    sget-object v1, Ljava/util/ResourceBundle$Control;->JAVAPROPERTIES:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 764
    sget-object v0, Ljava/util/ResourceBundle$Control;->listClass:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljava/util/ResourceBundle$Control;->format:Ljava/util/List;

    .line 765
    return-void
.end method

.method public static getControl(Ljava/util/List;)Ljava/util/ResourceBundle$Control;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ResourceBundle$Control;"
        }
    .end annotation

    .prologue
    .line 771
    .local p0, formats:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_2e

    .line 786
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 773
    :pswitch_d
    sget-object v0, Ljava/util/ResourceBundle$Control;->JAVACLASS:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 774
    sget-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_CLASS_CONTROL:Ljava/util/ResourceBundle$Control;

    .line 782
    :goto_17
    return-object v0

    .line 776
    :cond_18
    sget-object v0, Ljava/util/ResourceBundle$Control;->JAVAPROPERTIES:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 777
    sget-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_PROPERTIES_CONTROL:Ljava/util/ResourceBundle$Control;

    goto :goto_17

    .line 781
    :pswitch_23
    sget-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_DEFAULT:Ljava/util/List;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 782
    sget-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_DEFAULT_CONTROL:Ljava/util/ResourceBundle$Control;

    goto :goto_17

    .line 771
    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_d
        :pswitch_23
    .end packed-switch
.end method

.method public static getNoFallbackControl(Ljava/util/List;)Ljava/util/ResourceBundle$Control;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ResourceBundle$Control;"
        }
    .end annotation

    .prologue
    .line 794
    .local p0, formats:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_2e

    .line 809
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 796
    :pswitch_d
    sget-object v0, Ljava/util/ResourceBundle$Control;->JAVACLASS:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 797
    sget-object v0, Ljava/util/ResourceBundle$NoFallbackControl;->NOFALLBACK_FORMAT_CLASS_CONTROL:Ljava/util/ResourceBundle$Control;

    .line 805
    :goto_17
    return-object v0

    .line 799
    :cond_18
    sget-object v0, Ljava/util/ResourceBundle$Control;->JAVAPROPERTIES:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 800
    sget-object v0, Ljava/util/ResourceBundle$NoFallbackControl;->NOFALLBACK_FORMAT_PROPERTIES_CONTROL:Ljava/util/ResourceBundle$Control;

    goto :goto_17

    .line 804
    :pswitch_23
    sget-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_DEFAULT:Ljava/util/List;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 805
    sget-object v0, Ljava/util/ResourceBundle$NoFallbackControl;->NOFALLBACK_FORMAT_DEFAULT_CONTROL:Ljava/util/ResourceBundle$Control;

    goto :goto_17

    .line 794
    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_d
        :pswitch_23
    .end packed-switch
.end method


# virtual methods
.method public getCandidateLocales(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/List;
    .registers 8
    .parameter "baseName"
    .parameter "locale"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .prologue
    .line 817
    if-eqz p1, :cond_4

    if-nez p2, :cond_a

    .line 818
    :cond_4
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 820
    :cond_a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 821
    .local v2, retList:Ljava/util/List;,"Ljava/util/List<Ljava/util/Locale;>;"
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 822
    .local v1, language:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 823
    .local v0, country:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    .line 824
    .local v3, variant:Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2b

    .line 825
    new-instance v4, Ljava/util/Locale;

    invoke-direct {v4, v1, v0, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 827
    :cond_2b
    const-string v4, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3b

    .line 828
    new-instance v4, Ljava/util/Locale;

    invoke-direct {v4, v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 830
    :cond_3b
    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4b

    .line 831
    new-instance v4, Ljava/util/Locale;

    invoke-direct {v4, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 833
    :cond_4b
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 834
    return-object v2
.end method

.method public getFallbackLocale(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Locale;
    .registers 4
    .parameter "baseName"
    .parameter "locale"

    .prologue
    .line 851
    if-eqz p1, :cond_4

    if-nez p2, :cond_a

    .line 852
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 854
    :cond_a
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    if-eq v0, p2, :cond_15

    .line 855
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 857
    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public getFormats(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .parameter "baseName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 841
    if-nez p1, :cond_8

    .line 842
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 844
    :cond_8
    iget-object v0, p0, Ljava/util/ResourceBundle$Control;->format:Ljava/util/List;

    return-object v0
.end method

.method public getTimeToLive(Ljava/lang/String;Ljava/util/Locale;)J
    .registers 5
    .parameter "baseName"
    .parameter "locale"

    .prologue
    .line 965
    if-eqz p1, :cond_4

    if-nez p2, :cond_a

    .line 966
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 968
    :cond_a
    const-wide/16 v0, -0x2

    return-wide v0
.end method

.method public needsReload(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle;J)Z
    .registers 16
    .parameter "baseName"
    .parameter "locale"
    .parameter "format"
    .parameter "loader"
    .parameter "bundle"
    .parameter "loadTime"

    .prologue
    .line 991
    if-nez p5, :cond_8

    .line 993
    new-instance v7, Ljava/lang/NullPointerException;

    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    throw v7

    .line 995
    :cond_8
    invoke-virtual {p0, p1, p2}, Ljava/util/ResourceBundle$Control;->toBundleName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 996
    .local v0, bundleName:Ljava/lang/String;
    move-object v4, p3

    .line 997
    .local v4, suffix:Ljava/lang/String;
    sget-object v7, Ljava/util/ResourceBundle$Control;->JAVACLASS:Ljava/lang/String;

    if-ne v7, p3, :cond_13

    .line 998
    const-string v4, "class"

    .line 1000
    :cond_13
    sget-object v7, Ljava/util/ResourceBundle$Control;->JAVAPROPERTIES:Ljava/lang/String;

    if-ne v7, p3, :cond_19

    .line 1001
    const-string v4, "properties"

    .line 1003
    :cond_19
    invoke-virtual {p0, v0, v4}, Ljava/util/ResourceBundle$Control;->toResourceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1004
    .local v6, urlname:Ljava/lang/String;
    invoke-virtual {p4, v6}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v5

    .line 1005
    .local v5, url:Ljava/net/URL;
    if-eqz v5, :cond_36

    .line 1006
    invoke-virtual {v5}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    .line 1007
    .local v1, fileName:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 1008
    .local v2, lastModified:J
    cmp-long v7, v2, p6

    if-lez v7, :cond_36

    .line 1009
    const/4 v7, 0x1

    .line 1012
    .end local v1           #fileName:Ljava/lang/String;
    .end local v2           #lastModified:J
    :goto_35
    return v7

    :cond_36
    const/4 v7, 0x0

    goto :goto_35
.end method

.method public newBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/util/ResourceBundle;
    .registers 19
    .parameter "baseName"
    .parameter "locale"
    .parameter "format"
    .parameter "loader"
    .parameter "reload"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 885
    if-eqz p3, :cond_4

    if-nez p4, :cond_a

    .line 886
    :cond_4
    new-instance v12, Ljava/lang/NullPointerException;

    invoke-direct {v12}, Ljava/lang/NullPointerException;-><init>()V

    throw v12

    .line 888
    :cond_a
    const/4 v10, 0x0

    .line 889
    .local v10, streams:Ljava/io/InputStream;
    invoke-virtual {p0, p1, p2}, Ljava/util/ResourceBundle$Control;->toBundleName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 890
    .local v3, bundleName:Ljava/lang/String;
    move-object/from16 v5, p4

    .line 892
    .local v5, clsloader:Ljava/lang/ClassLoader;
    const/4 v4, 0x0

    .line 893
    .local v4, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v12, Ljava/util/ResourceBundle$Control;->JAVACLASS:Ljava/lang/String;

    move-object v0, v12

    move-object/from16 v1, p3

    if-ne v0, v1, :cond_37

    .line 894
    new-instance v12, Ljava/util/ResourceBundle$Control$1;

    invoke-direct {v12, p0, v5, v3}, Ljava/util/ResourceBundle$Control$1;-><init>(Ljava/util/ResourceBundle$Control;Ljava/lang/ClassLoader;Ljava/lang/String;)V

    invoke-static {v12}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    check-cast v4, Ljava/lang/Class;

    .line 906
    .restart local v4       #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez v4, :cond_28

    .line 907
    const/4 v12, 0x0

    .line 955
    :goto_27
    return-object v12

    .line 910
    :cond_28
    :try_start_28
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ResourceBundle;

    .line 911
    .local v2, bundle:Ljava/util/ResourceBundle;
    #calls: Ljava/util/ResourceBundle;->setLocale(Ljava/util/Locale;)V
    invoke-static {v2, p2}, Ljava/util/ResourceBundle;->access$000(Ljava/util/ResourceBundle;Ljava/util/Locale;)V
    :try_end_31
    .catch Ljava/lang/NullPointerException; {:try_start_28 .. :try_end_31} :catch_33

    move-object v12, v2

    .line 912
    goto :goto_27

    .line 913
    .end local v2           #bundle:Ljava/util/ResourceBundle;
    :catch_33
    move-exception v12

    move-object v7, v12

    .line 914
    .local v7, e:Ljava/lang/NullPointerException;
    const/4 v12, 0x0

    goto :goto_27

    .line 917
    .end local v7           #e:Ljava/lang/NullPointerException;
    :cond_37
    sget-object v12, Ljava/util/ResourceBundle$Control;->JAVAPROPERTIES:Ljava/lang/String;

    move-object v0, v12

    move-object/from16 v1, p3

    if-ne v0, v1, :cond_84

    .line 918
    const-string v12, "properties"

    invoke-virtual {p0, v3, v12}, Ljava/util/ResourceBundle$Control;->toResourceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 920
    .local v8, resourceName:Ljava/lang/String;
    if-eqz p5, :cond_70

    .line 921
    const/4 v11, 0x0

    .line 923
    .local v11, url:Ljava/net/URL;
    :try_start_47
    move-object/from16 v0, p4

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;
    :try_end_4d
    .catch Ljava/lang/NullPointerException; {:try_start_47 .. :try_end_4d} :catch_8a

    move-result-object v11

    .line 927
    :goto_4e
    if-eqz v11, :cond_5c

    .line 928
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    .line 929
    .local v6, con:Ljava/net/URLConnection;
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 930
    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    .line 945
    .end local v6           #con:Ljava/net/URLConnection;
    .end local v11           #url:Ljava/net/URL;
    :cond_5c
    :goto_5c
    if-eqz v10, :cond_82

    .line 947
    :try_start_5e
    new-instance v9, Ljava/util/PropertyResourceBundle;

    new-instance v12, Ljava/io/InputStreamReader;

    invoke-direct {v12, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v12}, Ljava/util/PropertyResourceBundle;-><init>(Ljava/io/Reader;)V

    .line 948
    .local v9, ret:Ljava/util/ResourceBundle;
    #calls: Ljava/util/ResourceBundle;->setLocale(Ljava/util/Locale;)V
    invoke-static {v9, p2}, Ljava/util/ResourceBundle;->access$000(Ljava/util/ResourceBundle;Ljava/util/Locale;)V

    .line 949
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_6e} :catch_7e

    move-object v12, v9

    .line 953
    goto :goto_27

    .line 934
    .end local v9           #ret:Ljava/util/ResourceBundle;
    :cond_70
    :try_start_70
    new-instance v12, Ljava/util/ResourceBundle$Control$2;

    invoke-direct {v12, p0, v5, v8}, Ljava/util/ResourceBundle$Control$2;-><init>(Ljava/util/ResourceBundle$Control;Ljava/lang/ClassLoader;Ljava/lang/String;)V

    invoke-static {v12}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/io/InputStream;

    move-object v10, v0
    :try_end_7d
    .catch Ljava/lang/NullPointerException; {:try_start_70 .. :try_end_7d} :catch_8c

    goto :goto_5c

    .line 950
    :catch_7e
    move-exception v12

    move-object v7, v12

    .line 951
    .local v7, e:Ljava/io/IOException;
    const/4 v12, 0x0

    goto :goto_27

    .line 955
    .end local v7           #e:Ljava/io/IOException;
    :cond_82
    const/4 v12, 0x0

    goto :goto_27

    .line 957
    .end local v8           #resourceName:Ljava/lang/String;
    :cond_84
    new-instance v12, Ljava/lang/IllegalArgumentException;

    invoke-direct {v12}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v12

    .line 924
    .restart local v8       #resourceName:Ljava/lang/String;
    .restart local v11       #url:Ljava/net/URL;
    :catch_8a
    move-exception v12

    goto :goto_4e

    .line 941
    .end local v11           #url:Ljava/net/URL;
    :catch_8c
    move-exception v12

    goto :goto_5c
.end method

.method public toBundleName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .registers 10
    .parameter "baseName"
    .parameter "locale"

    .prologue
    .line 1027
    const-string v0, ""

    .line 1028
    .local v0, emptyString:Ljava/lang/String;
    const-string v1, "_"

    .line 1029
    .local v1, preString:Ljava/lang/String;
    const-string v4, "_"

    .line 1030
    .local v4, underline:Ljava/lang/String;
    if-nez p1, :cond_e

    .line 1031
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 1033
    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1034
    .local v3, ret:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1035
    .local v2, prefix:Ljava/lang/StringBuilder;
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1036
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_73

    .line 1037
    const-string v5, "_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1038
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1042
    :goto_33
    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_79

    .line 1043
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1044
    const-string v5, "_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1045
    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1046
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2           #prefix:Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1050
    .restart local v2       #prefix:Ljava/lang/StringBuilder;
    :goto_53
    invoke-virtual {p2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6e

    .line 1051
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1052
    const-string v5, "_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1053
    invoke-virtual {p2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1055
    :cond_6e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1040
    :cond_73
    const-string v5, "_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_33

    .line 1048
    :cond_79
    const-string v5, "_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_53
.end method

.method public final toResourceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "bundleName"
    .parameter "suffix"

    .prologue
    const/16 v2, 0x2e

    .line 1070
    if-nez p2, :cond_a

    .line 1071
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1073
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1074
    .local v0, ret:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1075
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1076
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
