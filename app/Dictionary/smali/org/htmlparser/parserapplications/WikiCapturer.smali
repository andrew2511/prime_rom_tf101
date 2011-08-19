.class public Lorg/htmlparser/parserapplications/WikiCapturer;
.super Lorg/htmlparser/parserapplications/SiteCapturer;
.source "WikiCapturer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/htmlparser/parserapplications/SiteCapturer;-><init>()V

    .line 54
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 10
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    new-instance v7, Lorg/htmlparser/parserapplications/WikiCapturer;

    invoke-direct {v7}, Lorg/htmlparser/parserapplications/WikiCapturer;-><init>()V

    .line 143
    .local v7, worker:Lorg/htmlparser/parserapplications/WikiCapturer;
    array-length v0, p0

    if-gtz v0, :cond_1

    .line 145
    const/4 v0, 0x0

    const-string v1, "Enter the URL to capture:"

    const-string v2, "Web Site"

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "http://htmlparser.sourceforge.net/wiki"

    invoke-static/range {v0 .. v6}, Ljavax/swing/JOptionPane;->showInputDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;ILjavax/swing/Icon;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 153
    .local v0, url:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v7, v0}, Lorg/htmlparser/parserapplications/WikiCapturer;->setSource(Ljava/lang/String;)V

    .line 160
    .end local v0           #url:Ljava/lang/String;
    :goto_0
    const/4 v0, 0x1

    array-length v1, p0

    if-lt v0, v1, :cond_3

    .line 162
    invoke-virtual {v7}, Lorg/htmlparser/parserapplications/WikiCapturer;->getSource()Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, url:Ljava/lang/String;
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 164
    .local v0, source:Ljava/net/URL;
    new-instance v1, Ljava/io/File;

    .end local v1           #url:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .end local v0           #source:Ljava/net/URL;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, path:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    .local v1, target:Ljava/io/File;
    new-instance v0, Ljavax/swing/JFileChooser;

    .end local v0           #path:Ljava/lang/String;
    invoke-direct {v0, v1}, Ljavax/swing/JFileChooser;-><init>(Ljava/io/File;)V

    .line 167
    .local v0, chooser:Ljavax/swing/JFileChooser;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljavax/swing/JFileChooser;->setDialogType(I)V

    .line 168
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljavax/swing/JFileChooser;->setFileSelectionMode(I)V

    .line 169
    invoke-virtual {v0, v1}, Ljavax/swing/JFileChooser;->setSelectedFile(Ljava/io/File;)V

    .line 170
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/swing/JFileChooser;->setMultiSelectionEnabled(Z)V

    .line 171
    .end local v1           #target:Ljava/io/File;
    const-string v1, "Target Directory"

    invoke-virtual {v0, v1}, Ljavax/swing/JFileChooser;->setDialogTitle(Ljava/lang/String;)V

    .line 172
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/swing/JFileChooser;->showSaveDialog(Ljava/awt/Component;)I

    move-result v1

    .line 173
    .local v1, ret:I
    if-nez v1, :cond_2

    .line 174
    invoke-virtual {v0}, Ljavax/swing/JFileChooser;->getSelectedFile()Ljava/io/File;

    move-result-object v0

    .end local v0           #chooser:Ljavax/swing/JFileChooser;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/htmlparser/parserapplications/WikiCapturer;->setTarget(Ljava/lang/String;)V

    .line 180
    .end local v1           #ret:I
    :goto_1
    const/4 v0, 0x2

    array-length v1, p0

    if-lt v0, v1, :cond_5

    .line 182
    const/4 v0, 0x0

    const-string v1, "Should resources be captured:"

    const-string v2, "Capture Resources"

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 p0, 0x2

    new-array v5, p0, [Ljava/lang/Object;

    .end local p0
    const/4 p0, 0x0

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v6, v5, p0

    const/4 p0, 0x1

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v6, v5, p0

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static/range {v0 .. v6}, Ljavax/swing/JOptionPane;->showInputDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;ILjavax/swing/Icon;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    .line 190
    .local p0, capture:Ljava/lang/Boolean;
    if-eqz p0, :cond_4

    .line 191
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .end local p0           #capture:Ljava/lang/Boolean;
    invoke-virtual {v7, p0}, Lorg/htmlparser/parserapplications/WikiCapturer;->setCaptureResources(Z)V

    .line 197
    :goto_2
    new-instance p0, Lorg/htmlparser/filters/NotFilter;

    new-instance v0, Lorg/htmlparser/filters/OrFilter;

    new-instance v1, Lorg/htmlparser/filters/AndFilter;

    new-instance v2, Lorg/htmlparser/filters/TagNameFilter;

    const-string v3, "DIV"

    invoke-direct {v2, v3}, Lorg/htmlparser/filters/TagNameFilter;-><init>(Ljava/lang/String;)V

    new-instance v3, Lorg/htmlparser/filters/HasAttributeFilter;

    const-string v4, "id"

    const-string v5, "navbar"

    invoke-direct {v3, v4, v5}, Lorg/htmlparser/filters/HasAttributeFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lorg/htmlparser/filters/AndFilter;-><init>(Lorg/htmlparser/NodeFilter;Lorg/htmlparser/NodeFilter;)V

    new-instance v2, Lorg/htmlparser/filters/OrFilter;

    new-instance v3, Lorg/htmlparser/filters/AndFilter;

    new-instance v4, Lorg/htmlparser/filters/TagNameFilter;

    const-string v5, "DIV"

    invoke-direct {v4, v5}, Lorg/htmlparser/filters/TagNameFilter;-><init>(Ljava/lang/String;)V

    new-instance v5, Lorg/htmlparser/filters/HasAttributeFilter;

    const-string v6, "id"

    const-string v8, "actionbar"

    invoke-direct {v5, v6, v8}, Lorg/htmlparser/filters/HasAttributeFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4, v5}, Lorg/htmlparser/filters/AndFilter;-><init>(Lorg/htmlparser/NodeFilter;Lorg/htmlparser/NodeFilter;)V

    new-instance v4, Lorg/htmlparser/filters/AndFilter;

    new-instance v5, Lorg/htmlparser/filters/TagNameFilter;

    const-string v6, "DIV"

    invoke-direct {v5, v6}, Lorg/htmlparser/filters/TagNameFilter;-><init>(Ljava/lang/String;)V

    new-instance v6, Lorg/htmlparser/filters/HasAttributeFilter;

    const-string v8, "id"

    const-string v9, "xhtml-validator"

    invoke-direct {v6, v8, v9}, Lorg/htmlparser/filters/HasAttributeFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5, v6}, Lorg/htmlparser/filters/AndFilter;-><init>(Lorg/htmlparser/NodeFilter;Lorg/htmlparser/NodeFilter;)V

    invoke-direct {v2, v3, v4}, Lorg/htmlparser/filters/OrFilter;-><init>(Lorg/htmlparser/NodeFilter;Lorg/htmlparser/NodeFilter;)V

    invoke-direct {v0, v1, v2}, Lorg/htmlparser/filters/OrFilter;-><init>(Lorg/htmlparser/NodeFilter;Lorg/htmlparser/NodeFilter;)V

    invoke-direct {p0, v0}, Lorg/htmlparser/filters/NotFilter;-><init>(Lorg/htmlparser/NodeFilter;)V

    invoke-virtual {v7, p0}, Lorg/htmlparser/parserapplications/WikiCapturer;->setFilter(Lorg/htmlparser/NodeFilter;)V

    .line 210
    invoke-virtual {v7}, Lorg/htmlparser/parserapplications/WikiCapturer;->capture()V

    .line 212
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    .line 213
    return-void

    .line 156
    .local v0, url:Ljava/lang/String;
    .local p0, args:[Ljava/lang/String;
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_0

    .line 159
    .end local v0           #url:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-virtual {v7, v0}, Lorg/htmlparser/parserapplications/WikiCapturer;->setSource(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 176
    .local v0, chooser:Ljavax/swing/JFileChooser;
    .restart local v1       #ret:I
    :cond_2
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_1

    .line 179
    .end local v0           #chooser:Ljavax/swing/JFileChooser;
    .end local v1           #ret:I
    :cond_3
    const/4 v0, 0x1

    aget-object v0, p0, v0

    invoke-virtual {v7, v0}, Lorg/htmlparser/parserapplications/WikiCapturer;->setTarget(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 193
    .local p0, capture:Ljava/lang/Boolean;
    :cond_4
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    goto :goto_2

    .line 196
    .local p0, args:[Ljava/lang/String;
    :cond_5
    const/4 v0, 0x2

    aget-object p0, p0, v0

    .end local p0           #args:[Ljava/lang/String;
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v7, p0}, Lorg/htmlparser/parserapplications/WikiCapturer;->setCaptureResources(Z)V

    goto/16 :goto_2
.end method


# virtual methods
.method protected isToBeCaptured(Ljava/lang/String;)Z
    .locals 2
    .parameter "link"

    .prologue
    .line 70
    invoke-super {p0, p1}, Lorg/htmlparser/parserapplications/SiteCapturer;->isToBeCaptured(Ljava/lang/String;)Z

    move-result v0

    .line 73
    .local v0, ret:Z
    if-eqz v0, :cond_0

    .line 74
    const-string v1, "PhpWikiAdministration"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    const/4 v0, 0x0

    .line 115
    :cond_0
    :goto_0
    return v0

    .line 76
    :cond_1
    const-string v1, "PhpWikiDocumentation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    const/4 v0, 0x0

    goto :goto_0

    .line 78
    :cond_2
    const-string v1, "TextFormattingRules"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 79
    const/4 v0, 0x0

    goto :goto_0

    .line 80
    :cond_3
    const-string v1, "NewMarkupTestPage"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 81
    const/4 v0, 0x0

    goto :goto_0

    .line 82
    :cond_4
    const-string v1, "OldMarkupTestPage"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 83
    const/4 v0, 0x0

    goto :goto_0

    .line 84
    :cond_5
    const-string v1, "OldTextFormattingRules"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 85
    const/4 v0, 0x0

    goto :goto_0

    .line 86
    :cond_6
    const-string v1, "PgsrcTranslation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 87
    const/4 v0, 0x0

    goto :goto_0

    .line 88
    :cond_7
    const-string v1, "HowToUseWiki"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 89
    const/4 v0, 0x0

    goto :goto_0

    .line 90
    :cond_8
    const-string v1, "MoreAboutMechanics"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 91
    const/4 v0, 0x0

    goto :goto_0

    .line 92
    :cond_9
    const-string v1, "AddingPages"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 93
    const/4 v0, 0x0

    goto :goto_0

    .line 94
    :cond_a
    const-string v1, "WikiWikiWeb"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 95
    const/4 v0, 0x0

    goto :goto_0

    .line 96
    :cond_b
    const-string v1, "UserPreferences"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 97
    const/4 v0, 0x0

    goto :goto_0

    .line 98
    :cond_c
    const-string v1, "PhpWiki"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 99
    const/4 v0, 0x0

    goto :goto_0

    .line 100
    :cond_d
    const-string v1, "WabiSabi"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 101
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 102
    :cond_e
    const-string v1, "EditText"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 103
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 104
    :cond_f
    const-string v1, "FindPage"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 105
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 106
    :cond_10
    const-string v1, "RecentChanges"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 107
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 108
    :cond_11
    const-string v1, "RecentEdits"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 109
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 110
    :cond_12
    const-string v1, "RecentVisitors"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 111
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 112
    :cond_13
    const-string v1, "SteveWainstead"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    const/4 v0, 0x0

    goto/16 :goto_0
.end method
