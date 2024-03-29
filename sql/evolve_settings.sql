create table settings
(
    `key` varchar(100)                   not null comment '设置项 key',
    value text                           null comment '设置项 value',
    tag   varchar(100) default 'default' not null comment '设置项 tag',
    primary key (`key`, tag)
)
    collate = utf8mb4_unicode_ci;

INSERT INTO evolve.settings (`key`, value, tag) VALUES ('api_freq', '{"get":{"freq":500,"forbidden":20},"post":{"freq":200,"forbidden":30}}', 'default');
INSERT INTO evolve.settings (`key`, value, tag) VALUES ('is_need_transition', '1', 'default');
INSERT INTO evolve.settings (`key`, value, tag) VALUES ('miniprogram_video', '0', 'wx_miniprogram');
INSERT INTO evolve.settings (`key`, value, tag) VALUES ('open_api_log', '0', 'default');
INSERT INTO evolve.settings (`key`, value, tag) VALUES ('open_ext_fields', '0', 'default');
INSERT INTO evolve.settings (`key`, value, tag) VALUES ('oplatform_close', '0', 'wx_oplatform');
INSERT INTO evolve.settings (`key`, value, tag) VALUES ('password_length', '6', 'default');
INSERT INTO evolve.settings (`key`, value, tag) VALUES ('password_strength', '0,3', 'default');
INSERT INTO evolve.settings (`key`, value, tag) VALUES ('post_count', '436', 'default');
INSERT INTO evolve.settings (`key`, value, tag) VALUES ('privacy', '1', 'agreement');
INSERT INTO evolve.settings (`key`, value, tag) VALUES ('privacy_content', '隐私协议
此应用程序尊重并保护使用该服务的所有用户的隐私。为了向您提供更准确和个性化的服务，此应用将根据本隐私政策使用和披露您的个人信息。但是，此应用程序将高度努力和谨慎地处理此信息。除非本隐私政策另有规定，否则未经您的事先许可，本应用程序不会向第三方披露或提供此信息。这个应用程式会不时更新本隐私权政策。同意本应用程序服务使用协议，即表示您已同意本隐私政策的全部内容。本隐私政策是本应用服务协议的组成部分。
1.
适用范围
A、您在注册此应用程序帐户时根据本应用程序的要求提供的个人注册信息；
B、当您使用App Network Service或访问App Platform网页时，应用程序在浏览器和计算机上自动接收并记录的信息，包括但不限于您的IP地址，浏览器类型，数据（如使用的语言，日期）访问时间，硬件和软件功能信息以及所需的网页记录；
C、应用程序通过合法手段从业务合作伙伴获得的用户个人数据。您理解并同意以下信息不适用于本隐私政策：
A、您在使用应用提供的搜索服务时输入的关键字信息；
B、您在此应用程序中收集的相关信息，包括但不限于参与活动，交易信息和评估详细信息；
C、违反法律或违反本《行为准则》以及本申请对您采取的行动。
2.
信息使用
A、除非您事先获得您的许可，或者该第三方与该应用程序（包括应用程序关联公司）是分开的，否则该应用程序不会向任何无关的第三方提供，出售，出租，共享或交易您的个人信息。共同。为了向您提供服务，并且在服务结束后，将禁止其访问以前可以访问的所有此类材料。
B、此应用程序也不允许任何第三方以任何方式收集，编辑，出售或分发您的个人信息。一旦发现上述应用程序平台的任何用户从事上述活动，则该应用程序有权立即终止与该用户的服务协议。
C、为了服务用户，应用程序可能会使用您使用的信息为您提供您感兴趣的信息，包括但不限于向您发送产品和服务信息，或与应用程序合作伙伴共享信息，以便他们可能会向您发送有关其产品和服务的信息（后者需要您的事先同意）
3.
信息公开
在以下情况下，此应用程序将根据您的个人意愿或法律全部或部分披露您的个人信息：
A、在您事先同意的情况下向第三方披露；
B、要提供您要求的产品和服务，您必须与第三方共享您的个人信息；
C、根据法律的有关规定，或应行政或司法当局的要求，向第三方或行政或司法当局公开；
D、如果您违反了中国相关法律，法规或本应用程序服务协议或相关规则，则需要将其披露给第三方；
E、如果您是合格的IP投诉人，并且已提出投诉，则应投诉人的要求将其披露给被投诉人，以便双方可以处理可能的权利纠纷；
F、在此应用程序平台上创建的交易中，如果交易的任何一方履行或部分履行了交易义务并要求信息披露，则该应用程序有权决定向用户提供交易对手的联系信息，等有助于完成交易或解决争端的信息。
G、根据法律，法规或网站政策，本申请认为适当的其他披露。
4.
信息存储与交流您在此应用程序中收集的信息和资料将存储在应用程序和/或其附属公司的服务器上，这些信息和资料可能会传输到您所在国家，地区或应用程序收集信息和资料的位置。它可以在国外访问，存储和显示。
5. Cookies的使用
A、如果您不拒绝接受cookie，则该应用程序将在您的计算机上设置或访问cookie，以便您可以登或使用基于cookie的服务或依赖cookie的功能。此应用程序使用Cookie为您提供更周到和个性化的服务，包括促销服务。
B、您有权接受或拒绝接受cookie。您可以通过修改浏览器设置来拒绝接受Cookie。但是，如果您选择拒绝接受cookie，则可能无法登录或使用依赖于cookie的此应用程序Web服务或功能。晓致隐私号让网站App快速实现即时通讯功能广告 基于互联网中间号通话，短信，智能机器人等通讯服务 查看详情 >
C、本政策将适用于通过本应用程序中提供的cookie获得的信息。
6.
信息安全
A、此应用程序帐户具有安全保护。请确保您的用户名和密码信息安全。该应用程序将通过诸如加密用户密码之类的安全措施来确保您的信息不会丢失，不被滥用或更改。尽管有上述安全措施，但也请注意，信息网络上没有“完美的安全措施”。
B、使用此应用程序Web服务进行在线交易时，您将不可避免地要与交易对手或潜在交易对进行交易
7.
本隐私政策的变更
A、如果我们决定更改我们的隐私政策，我们将在本政策，我们的网站以及我们认为适当的位置上发布这些更改，以便您了解我们如何收集和使用您的个人信息以及谁可以访问它。在什么情况下，我们将披露此信息。', 'agreement');
INSERT INTO evolve.settings (`key`, value, tag) VALUES ('qcloud_sms', '0', 'qcloud');
INSERT INTO evolve.settings (`key`, value, tag) VALUES ('qcloud_vod', '0', 'qcloud');
INSERT INTO evolve.settings (`key`, value, tag) VALUES ('register', '1', 'agreement');
INSERT INTO evolve.settings (`key`, value, tag) VALUES ('register_captcha', '0', 'default');
INSERT INTO evolve.settings (`key`, value, tag) VALUES ('register_close', '1', 'default');
INSERT INTO evolve.settings (`key`, value, tag) VALUES ('register_content', '用户注册使用协议

本协议由您与此网站共同缔结，本协议具有合同效力。
本协议中协议双方合称协议方，本网站在协议中亦称为“论坛网”
协议内容及签署
1.本协议内容包括协议正文及所有论坛网已经发布的或将来可能发布的各类规则。所有规购为本协议不可分割的组成部分，与协议正文具有同等法律效力。除另行明确声明外，任何论坛网及其关联公司提供的服务(以下称为论坛网服务)均受本协议约束。
2.您应当在使用论坛网服务之前认真阅读全部协议内容，对于协议中以加粗字体显示的内容，您应重点阅读。如您对协议有任何疑问的，应向论坛网咨询。但无论您事实上是否在使用论坛网服务之前认真阅读了本协议内容，只要您使用论坛网服务，则本协议即对您产生约束，届时您不应以未阅读本协议的内容或者未获得论坛网对您问询的解答等理由，主张本协议无效，或要求撤销本协议，
3您承诺接受并遵守本协议的约定。如果您不同意本协议的约定，您应立即停止注册程序或停止使用论坛网服务
4.论坛网有权根据雷要不时地制订、修改本协议及/或各类规则，并以网站公示的方式进行公告，不再单独通知您。变更后的协议和规则一经在网站公布后，立即自动生效。如您不同意相关变更，应当立即停止使用论坛网服务。若您继续使用论坛网服务，即表示您接受经修订的协议。
二、 注册
1.注册者资格
您确认，在您完成注册程序或以其他论坛网允许的方式实际使用论坛网服务时，您应当是具备完全民事权利能力和完全民事行为能力的自然人、法人或其他组织。若您不具备前述主体资格，则您及您的监护人应承担因此而导致的一切后果，且论坛网有权注销(永久冻结)您的论坛网账户，并向您及您的监护人索偿。
2.账户
在您签署本协议，完成会员注册程序或以其他论坛网允许的方式实际使用论坛网服务时，论坛网会向您提供唯一编号的论坛网账户(以下亦称账户)。
您可以对账户设置会员名和密码，通过该会员密码或与该会员密码关联的其它用户名密码登录论坛网(wwwzfhch您设置的会员名不得侵犯或涉嫌侵犯他人合法权益。当您的账户设立完成后，您应当在此后90日内使用您的会员号和密码登录论坛网。逾期未登录的，论坛网有权终止向您提供论坛网服务，注销您的账户。账户注销后，相应的会员号将开放给任意用户注册登记使用。
您应对您的账户(会员号)和密码的安全，以及对通过您的账户(会员号)和密码实施的行为负责。除非有法律规定或司法裁定，且征得论坛网的同意，否则，账户(会员号)和密码不得以任何方式转让、赠与或继承(与账户相关的财产权益除外)。如果发现任何人不当使用您的账户或有任何其他可能危及您的账户安全的情形时。您应当立即以有效方式通知论坛网，要求论坛网暂停相关服务。您理解论坛网对您的请求采取行动需要合理时间，论坛网对在采取行动前已经产生的后果(包括但不限于您的任何损失)不承担任何责任。
为方便您使用论坛网服务及智富惠关联公司或其他组织的服务(以下称其他服务)，您同意并授权论坛网将您在注册、使用论坛网服务过程中提供、形成的信息传递给向您提供其他服务的论坛网关联公司或其他组织，或从提供其他服务的论坛网关联公司或其他组织获取您在注册、使用其他服务期间提供、形成的信息。
3.会员
在您按照注册页面提示填写信息、阅读并同意本协议并完成全部注册程序后或以其他论坛网允许的方式实际使用论坛网服务时，您即成为论坛网会员(亦称会员)。
在注册时，您应当按照法律法规要求，或注册页面的提示准确提供，并及时更新您的资料，以使之真实、及时，完整和准确。如有合理理由怀疑您提供的资料错误、不实、过时或不完整的，论坛网有权向您发出询问及/或要求改正的通知，并有权直接做出删除相应资料的处理，直至中止、终止对您提供部分或全部论坛网服务。论坛网对此不承担任何责任，您将承担因此产生的任何直接或间接支出。
您应当准确填写并及时更新您提供的电子邮件地址、联系电话、联系地址、邮政编码等联系方式，以便论坛网或其他会员与您进行有效联系，因通过这些联系方式无法与您取得联系，导致您在使用论坛网服务过程中产生任何损失或增加费用的，应由您完全独自承担。
您在使用论坛网服务过程中，所产生的应纳税赋，以及一切硬件、软件、服务及其它方面的费用，均由您独自承担。
三、 论坛网服务
1.通过论坛网及其关联公司提供的论坛网服务和其它服务，会员可在论坛网上查询商家和服务信息、达成消费意向并进行实际消费、对其他会员进行评价、参加论坛网组织的活动以及使用其它信息服务及技术服务。
2.您通过论坛网的消费过程中与其他会员、联盟商家发生消费纠纷时，一且您或其它会员、商家任一方或双方共同提交论坛网要求调处，则论坛网有权根据单方判断做出调处决定，您了解并同意接受论坛网的判断和调处决定。该决定将对您具有法律约束力。
3.您了解并同意，论坛网有权应政府部门(包括司法及行政部门)的要求，向其提供您在论坛网填写的注册信息和交易纪录等必要信息。如您涉嫌侵犯他人知识产权，则论坛网亦有权在初步判断涉嫌侵权行为存在的情况下，向权利人提供您必要的身份信息。
四、 论坛网服务使用规范
1.通过论坛网使用智富惠服务过程中，您承诺遵守以下约定;
a)在使用论坛网服务过程中实施的所有行为均遵守国家法律、法规等规范性文件及论坛网各项规则的规定和要求，不违背社会公共利益或公共道德，不损害他人的合法权益，不违反本协议及相关规则。您如果违反前述承诺，产生任何法律后果的，您应以自己的名义独立承担所有的法律责任，并确保论坛网免于因此产生任何损失。
b)在与其他会员交易过程中，遵守诚实信用原则，不采取不正当竞争行为，不扰乱网上交易的正常秩序，不从事与网上交易无关的行为。
c)不发布国家禁止销售的或限制销售的商品或服务信息(除非取得合法且足够的许可)，不发布涉嫌侵犯他人知识产权或其它合法权益的商品或服务信息，不发布违背社会公共利益或公共道德或论坛网认为不适合在论坛网网上销售的商品或服务信息，不发布其它涉嫌违法或违反本协议及各类规则的信息。
d)不以虚构或无曲事实的方式不当评价其他会员，不采取不正当方式制造或提高自身的信用度，不采取不正当方式制造或提高(降低)其他会员的信用度:
e)不对论坛网的任何数据作商业性利用，包括但不限于在未经淘宝事先书面同意的情况下以复制、传播等任何方式使用论坛网网站上展示的资料。
f)不使用任何装置、软件或例行程序于预或试图干预论坛网的正常运作或正在论坛网上进行的任何交易、活动。您不得采取任何将导致不合理的庞大数据负载加诸论坛网网络设备的行动。
2.您了解并同意:
a)论坛网有权对您是否违反上述承诺做出单方认定，并根据单方认定结果适用规则予以处理或终止向您提供服务，且无须征得您的同意或提前通知予您。
b)经国家行政或司法机关的生效法律文书确认您存在违法或侵权行为，或者论坛网根据自身的判断，认为您的行为涉嫌违反本协议和或规则的条款或涉嫌违反法律法规的规定的，则论坛网有权在论坛网上公示您的该等涉嫌违法或违约行为及论坛网已对您采取的措施。
c)对于您在论坛网上发布的涉嫌违法或涉嫌侵犯他人合法权利或违反本协议和(成规则的信息，淘宝有权不经通知您即予以别除，且按照规则的规定进行处罚。
d)对于您在论坛网上实施的行为，包括您未在论坛网上实施但已经对论坛网及其用户产生影响的行为，论坛网有权单方认定您行为的性质及是否构成对本协议和(威规则的违反，并据此作出相应处罚您应自行保存与您行为有关的全部证据，并应对无法提供充要证据而承担的不利后果。
e)对于您涉嫌违反承诺的行为对任意第三方造成损害的，您均应当以自己的名义独立承担所有的法律责任，并应确保淘宝免于因此产生损失或增加费用。
f)如您涉嫌违反有关法律或者本协议之规定，使论坛网遭受任何损失，或受到任何第三方的索赔，或受到任何行政管理部门的处罚，您应当赔偿论坛网因此造成的损失及(或)发生的费用，包括合理的律师费用。
五、 特别授权
您完全理解并不可撤销地授予论坛网及其关联公司下列权利:
1一旦您向论坛网及(或)其关联公司(包括联盟商家)等作出任何形式的承诺，且相关公司已确认您违反了该承诺，则论坛网有权立即按您的承诺或协议约定的方式对您的账户采取限制措施，包括中止或终止向您提供服务，并公示相关公司确认的您的违约情况。您了解并同意，论坛网无须就相关确认与您核对事实，或另行征得您的同意，且论坛网无须就此限制措施或公示行为向您承担任何的责任。
2.一旦您违反本协议，或与论坛网签订的其他协议的约定，论坛网有权以任何方式通知论坛网关联公司，要求其对您的权益采取限制措施。包括将您账户内的款项支付给论坛网指定的对象，要求关联公司中止、终止对您提供部分或全部服务，且在其经营或实际控制的任何网站公示您的违约情况:
3.对于您提供的资料及数据信息，您授予论坛网及其关联公司独家的、全球通用的、永久的、免费的许可使用权利(并有权在多个层面对该权利进行再授权)。此外，论坛网及其关联公司有权(全部或部份地)使用、复制、修订、改写、发布、翻译、分发、执行和展示您的全部资料数据(包括但不限于注册资料、交易行为数据及全部展示于论坛网的各类信息)或制作其派生作品，并以现在已知或日后开发的任何形式、媒体或技术，将上述信息纳入其它作品内。
六、责任范围和责任限制
1、论坛网负责按”现状”和”可得到”的状态向您提供论坛网服务。但论坛网对论坛网服务不作任何明示或暗示的保证，包括但不限于论坛网服务的适用性，没有错误或疏漏、持续性、准确性、可靠性、适用于某一特定用途。同时，论坛网也不对论坛网服务所涉及的技术及信息的有效性、准确性、正确性、可黛性、质量、稳定、完整和及时性作出任何承诺和保证。
2、您了解论坛网上的信息系用户自行发布，且可能存在风险和瑕瘦。论坛网仅作为信息交流平台。论坛网仅作为沟通您与商家的一个平台，一座桥梁，但论坛网无法控制消费所涉及的物品的质量，安全或合法性，商贸信息的真实性或准确性，以及消费各方展行其在贸易协议中各项义务的能力您应自行谨慎判断确定相关物品及/或信息的真实性、合法性和有效性，并自行承担因此产生的责任与损失。
3、除非法律法规明确要求，或出现以下情况，否则论坛网没有义务对所有用户的注册数据。商品(服务)信息、交易行为以及与交易有关的其它事项进行事先审查:
a)论坛网有合理的理由认为特定会员及具体交易事项可能存在重大违法或违约情形。 
b)论坛网有合理的理由认为用户在智富惠网上的行为涉嫌违法或不当。
4、论坛网及其关联公司有权受理您与商家因消费产生的争议，并有权判断与该争议相关的事实及应适用的规则，进而作出处理决定。该处理决定对您有约束力。如您在商家消费未能正常支付，论坛网在与您，商家确定真实数据后，有权通过系统后台扣除您该支付的款项给商家。
您理解并同意，论坛网及其关联公司并非司法机构，仅能以普通人的身份对证据进行鉴别，论坛网及其关联公司对争议的调处完全是基于您的委托，论坛网及其关联公司无法保证争议处理结果符合您的期望，也不对争议调处结论承担任何责任。如您因此遭受损失，您同意自行向受益人索偿。
5、您了解并网意，论坛网不对因下述任一情况而导致您的任何损害赔偿承担责任，包括但不限于利润、商誉、使用、数据等方面的损失或其它无形损失的损害赔偿(无论论坛网是否已被告知该等损害赔偿的可能性): 
a)使用或未能使用论坛网服务。
b) 第三方未经批准的使用您的账户或更改您的数据。
c)通过论坛网服务购买或获取任何商品、样品、数据、信息或进行交易等行为或替代行为产生的费用及损失。
d) 您对论坛网服务的误解，
e)任何非因论坛网的原因而引起的与论坛网服务有关的其它损失。
6.不论在何种情况下，论坛网均不对由于互联网正常的设备维护，互联网络连接故障，电脑通讯或其他系统的故障，电力故障，罢工，劳动争议，暴乱，起义，骚乱，生产力或生产资料不足，火灾，洪水，风暴，爆炸，战争，政府行为，司法行政机关的命令或第三方的不作为而造成的不能服务或延迟服务承担责任。
七、 协议终止
1、您同意，论坛网有权自行全权决定以任何理由不经事先通知的中止、终止向您提供部分或全部服务', 'agreement');
INSERT INTO evolve.settings (`key`, value, tag) VALUES ('register_validate', '0', 'default');
INSERT INTO evolve.settings (`key`, value, tag) VALUES ('site_author', '1', 'default');
INSERT INTO evolve.settings (`key`, value, tag) VALUES ('site_author_scale', '3', 'default');
INSERT INTO evolve.settings (`key`, value, tag) VALUES ('site_can_reward', '1', 'default');
INSERT INTO evolve.settings (`key`, value, tag) VALUES ('site_charge', '1', 'default');
INSERT INTO evolve.settings (`key`, value, tag) VALUES ('site_close', '0', 'default');
INSERT INTO evolve.settings (`key`, value, tag) VALUES ('site_close_msg', '', 'default');
INSERT INTO evolve.settings (`key`, value, tag) VALUES ('site_create_thread0', '1', 'default');
INSERT INTO evolve.settings (`key`, value, tag) VALUES ('site_create_thread1', '1', 'default');
INSERT INTO evolve.settings (`key`, value, tag) VALUES ('site_create_thread2', '1', 'default');
INSERT INTO evolve.settings (`key`, value, tag) VALUES ('site_create_thread3', '1', 'default');
INSERT INTO evolve.settings (`key`, value, tag) VALUES ('site_create_thread4', '1', 'default');
INSERT INTO evolve.settings (`key`, value, tag) VALUES ('site_create_thread5', '0', 'default');
INSERT INTO evolve.settings (`key`, value, tag) VALUES ('site_create_thread6', '1', 'default');
INSERT INTO evolve.settings (`key`, value, tag) VALUES ('site_id', '038be1a661c745ceacf7f7f183a4aed4', 'default');
INSERT INTO evolve.settings (`key`, value, tag) VALUES ('site_init_version', '3.0.220211', 'default');
INSERT INTO evolve.settings (`key`, value, tag) VALUES ('site_init_version_time', '2022-02-22 17:29:43', 'default');
INSERT INTO evolve.settings (`key`, value, tag) VALUES ('site_install', '2021-07-30 16:17:57', 'default');
INSERT INTO evolve.settings (`key`, value, tag) VALUES ('site_introduction', '正在持续更新中...尽情期待。', 'default');
INSERT INTO evolve.settings (`key`, value, tag) VALUES ('site_keywords', '论坛', 'default');
INSERT INTO evolve.settings (`key`, value, tag) VALUES ('site_manage', '[]', 'default');
INSERT INTO evolve.settings (`key`, value, tag) VALUES ('site_master_scale', '7', 'default');
INSERT INTO evolve.settings (`key`, value, tag) VALUES ('site_mode', 'public', 'default');
INSERT INTO evolve.settings (`key`, value, tag) VALUES ('site_name', 'Evolve', 'default');
INSERT INTO evolve.settings (`key`, value, tag) VALUES ('site_open_sort', '1', 'default');
INSERT INTO evolve.settings (`key`, value, tag) VALUES ('site_price', null, 'default');
INSERT INTO evolve.settings (`key`, value, tag) VALUES ('site_record', '', 'default');
INSERT INTO evolve.settings (`key`, value, tag) VALUES ('site_record_code', '', 'default');
INSERT INTO evolve.settings (`key`, value, tag) VALUES ('site_secret', 'bkkEo8oVpUlhDKoU2fYglydRDzmPGb12', 'default');
INSERT INTO evolve.settings (`key`, value, tag) VALUES ('site_stat', '', 'default');
INSERT INTO evolve.settings (`key`, value, tag) VALUES ('site_title', 'Evolve', 'default');
INSERT INTO evolve.settings (`key`, value, tag) VALUES ('site_url', 'http://1lin.xyz', 'default');
INSERT INTO evolve.settings (`key`, value, tag) VALUES ('support_file_ext', 'doc,docx,pdf,zip', 'default');
INSERT INTO evolve.settings (`key`, value, tag) VALUES ('support_img_ext', 'png,gif,jpg,jpeg,heic', 'default');
INSERT INTO evolve.settings (`key`, value, tag) VALUES ('support_max_size', '5', 'default');
INSERT INTO evolve.settings (`key`, value, tag) VALUES ('thread_count', '159', 'default');
INSERT INTO evolve.settings (`key`, value, tag) VALUES ('thread_optimize', '1', 'default');
INSERT INTO evolve.settings (`key`, value, tag) VALUES ('user_count', '143', 'default');
